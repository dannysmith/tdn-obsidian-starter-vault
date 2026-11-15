#!/bin/sh
# Moves the example dates in this vault so they're relative to today.
#
# The example notes are written as if today were REFERENCE_DATE. This shifts
# every YYYY-MM-DD date in them by the number of days between then and today,
# so the Today, Upcoming and overdue views have something in them. Running it
# is optional: without it the vault works, the examples just look old.
#
# Usage: ./shift-dates.sh

set -eu

REFERENCE_DATE=2026-11-15

self=$(basename "$0")
cd "$(dirname "$0")"
today=$(date +%Y-%m-%d)

# Date maths in plain awk: days() turns YYYY-MM-DD into a day number and
# civil() turns it back (Howard Hinnant's civil-from-days algorithm).
DATE_FUNCTIONS='
function days(s,   y, m, d, era, yoe, doy, doe) {
  y = substr(s, 1, 4) + 0; m = substr(s, 6, 2) + 0; d = substr(s, 9, 2) + 0
  if (m <= 2) y--
  era = int(y / 400); yoe = y - era * 400
  doy = int((153 * (m > 2 ? m - 3 : m + 9) + 2) / 5) + d - 1
  doe = yoe * 365 + int(yoe / 4) - int(yoe / 100) + doy
  return era * 146097 + doe - 719468
}
function civil(z,   era, doe, yoe, y, doy, mp, d, m) {
  z += 719468; era = int(z / 146097); doe = z - era * 146097
  yoe = int((doe - int(doe / 1460) + int(doe / 36524) - int(doe / 146096)) / 365)
  y = yoe + era * 400; doy = doe - (365 * yoe + int(yoe / 4) - int(yoe / 100))
  mp = int((5 * doy + 2) / 153); d = doy - int((153 * mp + 2) / 5) + 1
  m = mp < 10 ? mp + 3 : mp - 9
  if (m <= 2) y++
  return sprintf("%04d-%02d-%02d", y, m, d)
}
'

# Replaces each date on a line exactly once, so a shifted date is never shifted again.
SHIFT_PROGRAM="$DATE_FUNCTIONS"'
{
  out = ""
  while (match($0, /[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/)) {
    out = out substr($0, 1, RSTART - 1) civil(days(substr($0, RSTART, 10)) + offset)
    $0 = substr($0, RSTART + RLENGTH)
  }
  print out $0
}
'

offset=$(awk -v ref="$REFERENCE_DATE" -v today="$today" "$DATE_FUNCTIONS"'BEGIN { print days(today) - days(ref) }')

if [ "$offset" -eq 0 ]; then
  echo "Dates are already relative to today ($today). Nothing to do."
  exit 0
fi

changed=0
for file in tasks/*.md tasks/archive/*.md projects/*.md areas/*.md example-note.md "Start Here.md"; do
  [ -f "$file" ] || continue
  awk -v offset="$offset" "$SHIFT_PROGRAM" "$file" > "$file.tmp"
  if cmp -s "$file" "$file.tmp"; then
    rm -f "$file.tmp"
  else
    mv "$file.tmp" "$file"
    changed=$((changed + 1))
  fi
done

# Record the new reference date so running this again doesn't shift twice.
awk -v today="$today" '/^REFERENCE_DATE=/ { $0 = "REFERENCE_DATE=" today } { print }' "$self" > "$self.tmp"
chmod +x "$self.tmp"
mv "$self.tmp" "$self"

echo "Shifted dates by $offset days in $changed files. They're now relative to $today."

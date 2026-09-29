#!/usr/bin/env bash
# process-brain-dump.sh
# Cron wrapper script that invokes the process-brain-dump skill via agy CLI.
# Scheduled to run daily at 12:00 PM via user crontab.

set -euo pipefail

# Paths
BRAIN_DIR="/media/arman/SSD_Storage/Syncthing/Syncthing-Laptop/Brain/Arman Second Brain"
LOG_FILE="${BRAIN_DIR}/sources/raw/cron.log"
AGY_BIN="/home/arman/.local/bin/agy"

# Ensure the raw archive directory exists
mkdir -p "${BRAIN_DIR}/sources/raw"

# Timestamp for log
echo "" >> "$LOG_FILE"
echo "========================================" >> "$LOG_FILE"
echo "[$(date '+%d-%m-%Y %I:%M %p')] Brain dump processing started" >> "$LOG_FILE"
echo "========================================" >> "$LOG_FILE"

# Check if the source file has content worth processing
SOURCE_FILE="${BRAIN_DIR}/sources/my-random-thoughts.md"
if [ ! -s "$SOURCE_FILE" ] || [ -z "$(tr -d '[:space:]' < "$SOURCE_FILE")" ]; then
    echo "[$(date '+%d-%m-%Y %I:%M %p')] Source file is empty, skipping." >> "$LOG_FILE"
    exit 0
fi

# Run the skill via agy in non-interactive print mode
cd "$BRAIN_DIR"
"$AGY_BIN" \
    --print "Use the process-brain-dump skill to process my notes in sources/my-random-thoughts.md. Follow every step in the SKILL.md exactly." \
    --mode=accept-edits \
    --print-timeout 10m \
    >> "$LOG_FILE" 2>&1

EXIT_CODE=$?

echo "[$(date '+%d-%m-%Y %I:%M %p')] Finished with exit code: ${EXIT_CODE}" >> "$LOG_FILE"
exit $EXIT_CODE

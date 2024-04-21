#!/bin/bash

# The target date is set to August 31, 2024, at midnight.
TARGET_DATE=$(date -d "2024-08-31 00:00:00" +%s)

# Current date and time
CURRENT_DATE=$(date +%s)

# Difference in seconds
DIFF_SECONDS=$((TARGET_DATE - CURRENT_DATE))

# Calculate days, hours, minutes, and seconds
DAYS_LEFT=$((DIFF_SECONDS / 86400))
HOURS_LEFT=$((DIFF_SECONDS % 86400 / 3600))
MINUTES_LEFT=$((DIFF_SECONDS % 3600 / 60))
SECONDS_LEFT=$((DIFF_SECONDS % 60))

# Echo the time left
echo "Time left $DAYS_LEFT:$HOURS_LEFT:$MINUTES_LEFT:$SECONDS_LEFT"

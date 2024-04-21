#!/bin/bash

# First target date is set to August 31, 2024, at midnight.
TARGET_DATE1=$(date -d "2024-08-31 00:00:00" +%s)

# Second target date is set to January 1, 2100, at midnight.
TARGET_DATE2=$(date -d "2100-01-01 00:00:00" +%s)

# Current date and time
CURRENT_DATE=$(date +%s)

# Difference in seconds for the first deadline
DIFF_SECONDS1=$((TARGET_DATE1 - CURRENT_DATE))

# Difference in seconds for the second deadline
DIFF_SECONDS2=$((TARGET_DATE2 - CURRENT_DATE))

# Calculate days, hours, minutes, and seconds for the first deadline
DAYS_LEFT1=$((DIFF_SECONDS1 / 86400))
HOURS_LEFT1=$((DIFF_SECONDS1 % 86400 / 3600))
MINUTES_LEFT1=$((DIFF_SECONDS1 % 3600 / 60))
SECONDS_LEFT1=$((DIFF_SECONDS1 % 60))

# Calculate days, hours, minutes, and seconds for the second deadline
DAYS_LEFT2=$((DIFF_SECONDS2 / 86400))
HOURS_LEFT2=$((DIFF_SECONDS2 % 86400 / 3600))
MINUTES_LEFT2=$((DIFF_SECONDS2 % 3600 / 60))
SECONDS_LEFT2=$((DIFF_SECONDS2 % 60))

# Output the formatted result for Conky to interpret the ${goto}
# echo "Exam time left $DAYS_LEFT1:$HOURS_LEFT1:$MINUTES_LEFT1:$SECONDS_LEFT1"'${goto 400}'"L time left $DAYS_LEFT2:$HOURS_LEFT2:$MINUTES_LEFT2:$SECONDS_LEFT2"
# echo "E time left $DAYS_LEFT1:$HOURS_LEFT1:$MINUTES_LEFT1:$SECONDS_LEFT1""                             L time left $DAYS_LEFT2:$HOURS_LEFT2:$MINUTES_LEFT2"
# echo "L $DAYS_LEFT2:$HOURS_LEFT2:$MINUTES_LEFT2                                                        E $DAYS_LEFT1:$HOURS_LEFT1:$MINUTES_LEFT1:$SECONDS_LEFT1"

# version 2
echo "L $DAYS_LEFT2  -  E $DAYS_LEFT1:$HOURS_LEFT1:$MINUTES_LEFT1:$SECONDS_LEFT1"

# NSDateFormatter Time Zone Bug in Objective-C

This repository demonstrates a common but subtle bug related to `NSDateFormatter` in Objective-C.  The core problem lies in the potential for implicit time zone usage, leading to incorrect date and time parsing or formatting if the time zone is not explicitly set.  The provided code examples show both the problematic code and the corrected version that explicitly specifies the time zone, thereby preventing inconsistencies.

The bug can manifest as incorrect dates when parsing data from a different time zone or generating timestamps for storage with an unintended time zone.  It's especially important when working with server-side data or across different geographical locations.

## Reproduction

1. Clone this repository.
2. Open the Xcode project.
3. Run the project to observe the incorrect output from `BuggyDateFormatter.m`.
4. Compare the output to that of `FixedDateFormatter.m` where the time zone is explicitly set.

## Solution

Always explicitly set the time zone using `setDateFormat:` and `setTimeZone:` for `NSDateFormatter`. This removes ambiguity and ensures consistent results across devices and time zones.
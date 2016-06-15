#!/usr/bin/env python3

"""
Calculates rescaled mark using hardcoded intervals

Usage example:
    $ ./rescale_mark.py 50
    Your mark should be 65.0
"""

import sys

if len(sys.argv) != 2:
    print("Please use your mark as the only argument")
    sys.exit()
else:
    try:
        old_mark = int(sys.argv[1])
    except ValueError:
        print("Please use a number as an argument")
    if old_mark not in range(100):
        print("Please use a number between 0 and 100")
        sys.exit()
    if old_mark == 100 or old_mark == 0:
        print("Your mark should be " + str(old_mark))
        sys.exit()

difference = 15
intervals = {
    25:0,
    75:25,
    100:75,
}

upper = next(i for i in set(intervals.keys()) if old_mark < i)
lower = intervals[upper]
upper_rescaled = min(upper + difference, 100)
lower_rescaled = lower + difference

new_mark = (lower_rescaled + (old_mark - lower) *
            (upper_rescaled  - lower_rescaled)/(upper - lower))

print("Your mark should be " + str(new_mark))

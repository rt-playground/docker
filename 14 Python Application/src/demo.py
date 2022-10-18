#!/usr/bin/env python3

"""
SAMPLE
"""

import sys
import os
import config

data = ["JournalDev", "AskPython"]
for x in data:
    print(x)

print(config.SPOT)
print(os.getenv("MARKED_PATH"))

target = sys.stdin
for line in target:
    print(line)

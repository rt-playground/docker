#!/usr/bin/env python3

"""
SAMPLE
"""

import sys
import config

data = ["JournalDev", "AskPython"]
for x in data:
    print(x)

print(config.SPOT)

target = sys.stdin
for line in target:
    print(line)

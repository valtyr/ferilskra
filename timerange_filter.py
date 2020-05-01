#! python3
import re
import sys


def process_line(line):
    return re.sub('\\\\timerange\\{(.*?)\\}\n', r'\n<div class="timerange">\1</div>', line)

source = sys.stdin.readlines()
processed = [process_line(line) for line in source]

sys.stdout.writelines(processed)

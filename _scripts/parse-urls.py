#! /usr/bin/env python

import re
import sys

infilename = "list.csv"
infile = open(infilename, "r")

outfilename = "list.html"
outfile = open(outfilename, "w")

line = infile.readline()

while line:
    matcher = re.match('(http(s?)://(www.)?(.*))', line)
    if matcher:
        url = matcher.group(1)
        title = matcher.group(4)
        print(url + "\t\t\t" + title)
        outfile.write("<li><a href=\"" + url + "\">" + title + "</a></li>\n")
        # print(".")
    # else:
        # print
        ("*")
    line = infile.readline()

infile.close()
outfile.close()

sys.exit()

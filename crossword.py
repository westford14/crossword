#!/usr/bin/env python3.5
import argparse

from puzParser import PuzParser

"""
Command line tool for crossword apps
"""

argParser = argparse.ArgumentParser()
argParser.add_argument("-p", "--parsepuz", help="parse a .puz file")
args = argParser.parse_args()

if args.parsepuz:
	puzParser = PuzParser(args.parsepuz)
	exitCode = puzParser.run()
	exit(exitCode)

print('Crosswords, yo')

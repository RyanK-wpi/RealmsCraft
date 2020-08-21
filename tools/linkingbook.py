#! /usr/bin/env python3

# If you're just looking to add to the RTC event linking book,
# add onto rtc.links and re-run this command on it, like this:
# $ ./linkingbook.py rtc.links

# Produces a Minecraft "Linking Book", a book with text that
# teleports the player when clicked. Useful for quickly moving
# around large servers in Creative mode.

import commandbook
import sys


def linkingbook(filename):
  book = commandbook.Book("Command Book")

  with open(filename) as f:
    for line in f:
      if line.startswith(":"):
        book.parse_config(line[1:])
        continue
      name, coords = line.split(":")
      book.add_link(name, "/teleport @p %s" % coords.strip())

  return book.generate()


def usage():
  print("Usage: {} <link file>\n".format(sys.argv[0]))
  print("This program produces a Minecraft command that gives a book to the issuing player.")
  print("The book is filled with text which, when clicked, teleport the player to given coordinates.")
  print("The command is usually too long to enter directly into Minecraft, so put it in a command block.")
  print("The links are defined by the <link file> that is passed in.")
  print("A link file (like test.links) has a name, followed by a colon, followed by the X Y Z coordinates separated only by spaces.")


def main():
  if len(sys.argv) < 2:
    usage()
    exit()
  print(linkingbook(sys.argv[1]))


if __name__ == "__main__":
  main()

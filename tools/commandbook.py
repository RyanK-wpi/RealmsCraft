#! /usr/bin/env python3

# Produces a Minecraft "Command Book", a book with text that
# executes commands when clicked.

# If run as a script, accepts a file with lines in the form:
#
# "Link text" /command...
#
#
# For more complicated books, like special data file formats or
# fancier text, make a separate file that imports this one and
# instantiates or subclasses Book.

import sys


FIRST_PAGE_MAX_LINKS = 5
LATER_PAGE_MAX_LINKS = 6


class Book(object):

  def __init__(self, title):
    self.title = title
    self.content = []
    self.content.append(r"""/give @p written_book""")
    self.content.append(r"""{pages:['["",{"text":" \\u0020 \\u0020 \\u0020 "},{"text":"%s\\n\\n","underlined":true},""" % self.title)

    self.page = 0
    self.links = 0
    
    self.author = "commandbook.py"

  def clear_color(self):
    self.content.append(r"""{"text":"\\n\\n","color":"reset"},""")

  def add_link(self, text, command, color="blue"):
    self.content.append(r"""{"text":"%s","underlined":true,"color":"%s","clickEvent":{"action":"run_command","value":"%s"}},""" % (text, color, command))
    self.clear_color()
    self.links += 1
    if ((self.page == 0 and self.links == FIRST_PAGE_MAX_LINKS)
        or (self.links - FIRST_PAGE_MAX_LINKS) % LATER_PAGE_MAX_LINKS == 0):
      self.page += 1
      self.content[-1] = self.content[-1][:-1] # Strip off final trailing comma
      self.content.append(r"""]','[""")
  
  def generate(self):
    data = self.content[:]
    data[-1] = data[-1][:-1] # Strip off final trailing comma
    data.append(r"""]'],title:"%s",author:"%s"}""" % (self.title, self.author))
    return "".join(data)


def commandbook(filename):
  book = Book("Command Book")

  with open(filename) as f:
    for i, line in enumerate(f):
      try:
        comment, text, command = line.split('"')
        if comment.startswith("color"):
          book.add_link(text, command.strip(), comment.split(" ")[0].split("color")[1])
        book.add_link(text, command.strip())
      except ValueError:
        if line.strip():
          sys.stderr.write("Warning: couldn't parse line %d: '%s'\n" % (i + 1, line.strip()))

  return book.generate()


def usage():
  print("Usage: {} <book file>\n".format(sys.argv[0]))
  print("This program produces a Minecraft command that gives a book to the issuing player.")
  print("The book is filled with text which, when clicked, issues a command.")
  print("The generated command is usually too long to enter directly into Minecraft, so put it in a command block.")
  print("The text and commands are defined by the <book file> that is passed in.")
  print("A command file (like test.commands) has on each line link text in quotes, followed by a command starting with a slash, like this:")
  print("\"Teleport to 0,0,0\" /teleport @p 0 0 0")


def main():
  if len(sys.argv) < 2:
    usage()
    exit()
  print(commandbook(sys.argv[1]))


if __name__ == "__main__":
  main()

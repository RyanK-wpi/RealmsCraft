#! /usr/bin/env python3

from util import mc_json
import sys


def page(filename=None):
  command = [r"/give @p paper"]
  data = {"display": {"Name": "Folded note",
                      "Lore": ["The outpost's along the river.",
                               "Even if it were \"destroyed\", you should",
                               "at least be able to find the walls,",
                               "and maybe get into the vault."]}}
  command.append(mc_json(data))
  return "".join(command)


#    /give @p paper{display:{Name:'"Folded note"', Lore:['"The outpost was along the river."', '"Even if it were destroyed,"', '"you should at least be able to find the walls,"', '"and maybe get into the vault."']}}


def main(argv):
  print(page())
#  print(page(argv[1]))


if __name__ == "__main__":
  main(sys.argv)

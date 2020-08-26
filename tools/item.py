#! /usr/bin/env python3

import json
import sys
from util import mc_json

# /give @p paper{display:{Name:'"Named Paper"', Lore:['"There are secrets here"']}}

def generate_command(item, name, lore):
  return "/give @p %s" % item + mc_json({"display": {"Name": name,
                                                     "Lore": list(map(str.strip, lore))}})


def usage(name):
  print("Usage: %s <item type> <name>")
  print("Generates a command to run in Minecraft to be given an item.")
  print("<item type> is a standard Minecraft identifier, like 'paper'")
  print("or 'minecraft:iron_axe'")
  print("<name> is the name to be shown in the item tooltip.")
  print("Lines passed into stdin become lore, in purple italics tooltip.")


def main(args):
  if len(args) < 2:
    usage(args[0])
    exit()
  print(generate_command(args[1], args[2], sys.stdin.readlines()))


if __name__ == "__main__":
  main(sys.argv)

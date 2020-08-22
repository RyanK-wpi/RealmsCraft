def mc_json(data):
  s = []
  if type(data) == dict:
    s.append("{")
    first = True
    for k in data:
      if first:
        first = False
      else:
        s.append(",")
      s.append(k + ":")
      s.append(mc_json(data[k]))
    s.append("}")
  elif type(data) == list:
    s.append("[")
    first = True
    for el in data:
      if first:
        first = False
      else:
        s.append(",")
      s.append(mc_json(el))
    s.append("]")
  elif type(data) == str:
    s.append("'\"" + data.replace("'", "\\'").replace('"', '\\\\"') + "\"'")
  return "".join(s)

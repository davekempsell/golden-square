def make_snippet(string)
  str = string.split(" ")
  new_str = str[0..4].join(" ")
  str.length > 5 ? new_str + "..." : new_str
end

def count_words(string)
  string.split(" ").length
end
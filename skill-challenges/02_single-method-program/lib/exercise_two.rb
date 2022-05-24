def check_grammar(text)
  if text[0] == text[0].upcase && ["?", ".", "!"].include?(text[-1])
    "Your grammar is correct."
  else
    "Your grammar is incorrect."
  end
end

def check_text(text)
  if text.include?("#TODO")
    return text
  end
end

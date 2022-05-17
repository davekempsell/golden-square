def estimate_reading_time(text)
  fail "no text given" if text.nil?
  words = text.split(" ").length
  (words / 200.0).ceil
end
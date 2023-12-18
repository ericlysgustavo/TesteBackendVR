def remove_text_after_symbols(input_string, symbols_array)
    symbols_array.each do |symbol|
      input_string = input_string.split(symbol).first.strip
    end
    input_string
  
    
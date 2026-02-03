
def ceaser_cipher(string_to_convert, cipher_key)
  alfabet = ('a'..'z').to_a
  string_already_split = string_to_convert.downcase.split("")
  already_cipher = []
  string_already_split.each do |string_word| 
    alfabet.each_with_index do |alfabet_word, index|
      if string_word == alfabet_word
        dsq = (index + cipher_key) % 26
        already_cipher.push(dsq)
      end
    end
  end

  sting_ciphered = []
  already_cipher.each do |e|
    alfabet.each_with_index do |x, y|
      if e == y
        sting_ciphered.push(x)
      end
    end
  end

  return puts sting_ciphered.join
end


ceaser_cipher("What a string!", 5)
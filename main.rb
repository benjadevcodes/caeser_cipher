
def ceaser_cipher(string_to_convert, cipher_key)
  alfabet = ('a'..'z').to_a
  string_already_split = string_to_convert.downcase.split("")
  already_cipher = []
  string_already_split.each do |string_word| 
    alfabet.each_with_index do |alfabet_word, index_alphabet|
      if string_word == alfabet_word
        word_already_cipher = (index_alphabet + cipher_key) % 26
        already_cipher.push(word_already_cipher)
      end
    end
  end

  string_ciphered = []
  already_cipher.each do |word_inside_already_cipher|
    alfabet.each_with_index do |alfabet_word, index_alphabet|
      if word_inside_already_cipher == index_alphabet
        string_ciphered.push(alfabet_word)
      end
    end
  end

  return puts string_ciphered.join
end


ceaser_cipher("What a string!", 5)
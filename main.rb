# frozen_string_literal: true

def caesar_cipher(phrase, key)
  alphabet = ('a'..'z').to_a
  new = phrase.split('')
  new.each.with_index do |i, j|
    new.length.times do
      alphabet.each.with_index do |letter, index|
        if i == i.upcase
          if (index + key) > alphabet.length
            n_index = (index + key) - alphabet.length
            new[j] = alphabet[n_index].upcase if !i.nil? && (i == letter.upcase)
          else
            new[j] = alphabet[index + key].upcase if !i.nil? && (i == letter.upcase)
          end
        else
          if (index + key) > alphabet.length
            n_index = (index + key) - alphabet.length
            new[j] = alphabet[n_index] if !i.nil? && (i.downcase == letter)
          else
            new[j] = alphabet[index + key] if !i.nil? && (i.downcase == letter)
          end
        end
      end
    end
  end
  new.join('')
end

print caesar_cipher('What a string!', 5)

# frozen_string_literal: true

def caesar_cipher(sentence, shift)
  special_chars = [' ', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '=', '+', '[', ']', '{', '}', ';',
                   ':', '\'', '"', ',', '.', '<', '>', '/', '?', '\\', '|', '`', '~']

  ascii = sentence.split('')

  ascii = ascii.map do |character|
    if special_chars.include?(character)
      character
    else
      character.ord
    end
  end

  shifted_ascii = ascii.map do |ascii|
    if ascii.is_a? Numeric
      shift.times do
        ascii -= 26 if [90, 122].include?(ascii)
        ascii += 1
      end
    end
    ascii
  end

  shifted_result = shifted_ascii.map(&:chr)

  shifted_result.join('')
end

puts caesar_cipher('I love Toyota', 5)

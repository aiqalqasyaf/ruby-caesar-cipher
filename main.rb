# frozen_string_literal: true

def caesar_cipher(sentence, shift)
  ascii = sentence.chars.map { |c| c.match?(/[[:alpha:]]/) ? c.ord : c }

  shifted_ascii = ascii.map do |ascii|
    if ascii.is_a? Numeric
      shift.times do
        ascii -= 26 if [90, 122].include?(ascii)
        ascii += 1
      end
    end
    ascii
  end

  shifted_ascii.map(&:chr).join('')
end

puts caesar_cipher('I love Toyota', 5)

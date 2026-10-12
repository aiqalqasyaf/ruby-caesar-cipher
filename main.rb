def caesar_cipher(sentence, shift)
  ascii = sentence.split('')

  ascii = ascii.map do |character|
    character.ord
  end

  shifted_ascii = ascii.map do |ascii|
    shift.times do
      ascii -= 26 if ascii == 90 || ascii == 122
      ascii += 1
    end
    ascii
  end

  shifted_sentence = shifted_ascii.map { |word| word.chr }

  shifted_sentence.join('')
end

puts caesar_cipher('Danial', 5)

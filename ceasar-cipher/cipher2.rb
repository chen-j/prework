def solve_cipher(input, shift)
  plain_text = []
  input.split('').each do |letter|
    if letter == ' '
      plain_text << ' '
      next
    end
    deciphered = letter.ord + shift
    plain_text << deciphered.chr
  end

  plain_text.join('')
end

p solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)

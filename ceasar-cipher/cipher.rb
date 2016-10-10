
def solve_cipher(input)
  shift_amount = 1
  plain_text = []
  input.split('').each do |letter|
    deciphered = letter.ord - shift_amount
    plain_text << deciphered.chr
  end

  plain_text.join('')
end

p solve_cipher('ifmmp')

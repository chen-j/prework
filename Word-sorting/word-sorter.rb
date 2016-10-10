
def sort_words(sentence)
  sentence.gsub(/[^a-z ]/i, '').split(' ').sort do |a, b|
    a.downcase <=> b.downcase
  end
end

p sort_words("Ruby is a fun language!")

File.open('/usr/share/dict/words').each do |word|
  Word.create(word: word.chomp.downcase, characters: Word.order_characters(word.chomp.downcase))
end

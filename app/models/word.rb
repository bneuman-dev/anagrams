class Word < ActiveRecord::Base
  # Remember to create a migration!
  validates :word, :uniqueness => true

  def self.order_characters(word)
    word.split('').sort.join('')
  end

  def anagrams
    Word.where(characters: self.characters)
  end
end

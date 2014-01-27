get '/:word' do
  @word = Word.find_by(word: params[:word])

  unless @word.nil?
    @anagrams = @word.anagrams.to_a
    @anagrams.delete(@word)
  end

  # Look in app/views/index.erb
  erb :index
end

post '/' do
  word = params[:word]
  redirect "/#{word}"
end

get '/' do
  erb :default
end

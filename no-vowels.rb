require 'pry'

# write a function called `without_vowles` that accepts one parameter called `favorite_word`
# within the function, create a variable called `word_without_vowels` and set it equal to the `favorite_word` without vowels (hint:  delete or replace the vowels with an empty string) 
# then, the function should make the computer say aloud "FAVORITE_WORD sounds like WORD_WITHOUT_VOWELS when it doens't have vowels"
# (you can do this a few ways - I recommend using `.gsub!(` and `system("say('...')")
def without_vowels(favorite_word)
   word_without_vowels = favorite_word.delete('aeiouAEIOU')
   system("say '#{favorite_word} sounds like #{word_without_vowels} when you remove the vowels'")
end


# ask the user for their favorite word
puts("what's your favorite word?")
# store their word in a variable called `user_favorite_word`
user_favorite_word = gets.strip


# call the functions with the the user's word
without_vowels(user_favorite_word)

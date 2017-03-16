# #################### functions ruby integer #########################
# def print_age age
#   puts "The age is, #{10 + age}"
#
# end
#
# puts print_age 10
#
#  ######################### functions ruby strings ##################
#
# def reverse_word word
# word.reverse
#
# end
#
# puts reverse_word "Sparta Global"
#
#  ######################### functions ruby ##################
#
#  def say_something word="you need to say something"
#    puts word
#
#  end

######################## splats (soak up arguments)#############


def say_some_words_to name, *words
  puts "#{name} #{words.join("")}"

end

say_some_words_to("Steve", "bob", "Anna")

 ######################### functions ruby ##################

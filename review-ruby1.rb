# 1 . What does the below method return?
def greet(name)
    puts "Hello, #{name}"
  end
  greet("Steven") #=> ?
  
#   # returns nil 

# 2 . What does this method return?

def hate_steven?(name)
    if name == "Steven"
      "OMG He's the worst"
    else
      "You cool"
    end
  end

  # returns error since no name is defined 
  # but if :

# hate_steven?("Adam")
#     => "You cool"

# hate_steven?("Steven")
#     => "OMG He's the worst"
 

# 3 . How would you select all of the words that start with the letter "a" from the below array?
# ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]

array = ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]
#select all words start with "a"
puts array.select {|a| a.start_with?("a")} 

# apple
# aardvark
#  => nil 


# 4 . Write a method that takes in an argument of a sentence and returns the

number of words in the sentence
def word_count(sentence)
    sentence.split(" ").length
end   
word_count("Hi, isn't this a great and interesting sentence??")

# # => 8 


# 5 . What will the following method return?

def rude_greeting(name=nil)
  name ||= "you jerk" #if name is nil, substitute the later argument
  puts "Hey there, #{name}"
 end
 #puts "Hey there, your jerk"
 #retrun nil


 # 6 . What will the following `puts`?

best_animal = "cat"
favorite_animal = best_animal
puts favorite_animal
# => ?
#puts: cat, return nil



# 7 . What will the following `puts`?

def my_favorite_animal
  "cat"
end

best_animal = my_favorite_animal

puts best_animal #puts cat


# 8 . What error, if any, will the following code raise?

"Blink" + 182
#TypeError (no implicit conversion of Integer into String)


# 9 . How would you `puts` out any and all foods that are delicious?

foods = {"pie" => "delicious", "broccoli" => "not delicious",
"carrots" => "not delicious", "apples" => "delicious",
"peanut butter" => "delicious"}

foods.select do |key, value| 
    if value == "delicious" 
        puts key
    end
end


# 10 . Delete all elements of the `foods` hash that are *not* delicious.
foods.delete_if do |key, value| 
  value == "not delicious"
end

# 11 . What is the return value of this method?

character_names = ["Daenerys Targaryen", "Jon Snow" ,"Arya Stark", "Tyrion Lannister", "Sansa Stark", "Cersei Lannister", "Margaery Tyrell"]

def downcase_all(array_of_strings)
  array_of_strings.map do |one_string|
    one_string.downcase
  end
end
#return value: array in lowercase


# 12 . Write a method that `puts` out a random Archer quote.

archer = {
  "name" => "Sterling Mallory Archer",
  "co-workers"=> ["Lana Kane", "Cyril Figgis", "Cheryl Tunt", "Pam Poovey", "Dr Krieger"],
  "favorite_drink" => "Bloody Mary",
  "Quotes" => ["I swear to god, I had something for this", "Phrasing", "Boop", "Danger Zone", "Read a book", "Do you not?", "Can't or won't?"]
}


def random_quote(archer)
puts archer["Quotes"][rand(0..archer["Quotes"].length)]
end
random_quote(archer)

# random_quote(archer)
# Can't or won't?
#  => nil 



archer = {
  "name" => "Sterling Mallory Archer",
  "co-workers"=> ["Lana Kane", "Cyril Figgis", "Cheryl Tunt", "Pam Poovey", "Dr Krieger"],
  "favorite_drink" => "Bloody Mary",
  "Quotes" => ["I swear to god, I had something for this", "Phrasing", "Boop", "Danger Zone", "Read a book", "Do you not?", "Can't or won't?"]
}

def random_quote(archer)
archer["Quotes"].sample
end
random_quote(archer)

# random_quote(archer)
#  => "Do you not?" 

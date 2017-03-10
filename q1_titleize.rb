# Implement the following code in Ruby: Create a module called HelperMethods that include a method called titleize that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example, if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from. Then write a piece of code to demonstrate the difference between include and extend in using Ruby modules with classes to include methods. Make sure to demonstrate calling the titleize methods with your code.

module HelperMethods
  def titleize(string)
    words = string.split(" ")
    words.each_with_index do |word, index|
      if (index == 0) || (word != "in" && word != "the" && word != "of" && word != "and" && word != "or" && word != "from")
        word.capitalize!
      end
    end
    words.join(" ")
  end
end

class BookTitle # code that defines a type of object
  attr_accessor :book_title
  include HelperMethods
end

class MovieTitle
  attr_accessor :movie_title
  # extend HelperMethods
end


book = BookTitle.new # book is an instance of BookTitle
# book.class => BookTitle
p book.titleize("the old man and the sea") # titleize is available to the book
# instance of BookTitle because it is included in in class. It is available
# to every new instance of BookTitle that is initialized.
p book.titleize("the lord of the rings")
p book.titleize("hello world")

MovieTitle.extend HelperMethods # titleize is extended to MovieTitle. It can
# either be extended to the class this way, or inside the class.
p movie = MovieTitle.titleize("la la land")
p movie2 = MovieTitle.titleize("planet of the apes")

class MyExamplesController < ApplicationController
  def fortune_method
    fortune = [
      "You are wise",
      "You are lucky",
      "Play the lotto",
    ]

    #   render html: "The fortune is #{fortune[rand(fortune.length)]}"
    # end
    lucky_number = []
    5.times do lucky_number << rand(60) end

    render html: "Your luck number is #{lucky_number} and your fortune is #{fortune.sample}"
  end

  def ninetynine_method
    str = ""

    i = 99
    while i > 2
      str += "#{i} bottles of beer on the wall, #{i} bottles of beer.
    Take one down and pass it around, #{i - 1} bottles of beer on the wall."
      i -= 1
    end
    str += "2 bottles of beer on the wall, 2 bottles of beer.
    Take one down and pass it around, 1 bottle of beer on the wall."
    str += "1 bottle of beer on the wall, 1 bottle of beer.
    Take one down and pass it around, no more bottles of beer on the wall.
    
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall."
    render html: "#{str}"
  end
end

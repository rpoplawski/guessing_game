
# This game allows the user to guess a number between
# 1 and 100 where the computer has chosen number at random.

class Guessing_game
  def initialize
    @guess = []
    @random_number = rand(1..100)
    @count = 0
  end

  def guess_the_number(number, guess, attempts)
    if guess < number
      puts "Your number is too low. Please try again." if @count < 4
    elsif guess > number
      puts "Your number is too high. Please try again." if @count < 4
    else
      puts "You have won!"
     #break
      exit
    end
  end

  def turn
    puts "Please guess a number."
    attempts = 0
    count = 0
    while(count < 5)
      guess = gets.chomp
      guess_the_number(@random_number, guess.to_i, attempts)
      attempts += 1
    end
    puts "You have lost."
    #break
  end
end

Guessing_game.new.turn

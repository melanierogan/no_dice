# Apply what you have learned about TDD to building a single Dice object based on the following user stories.

# As a board game player,
# So that I can play a game
# I want to be able to roll a dice

# As a board game player,
# So that I know how many steps I should move
# Rolling a dice should give me a number between 1 and 6 - so between 1 and 6 (including both)

# As a dice app developper,
# So that I give players a good game experience
# I want the dice roll to be randomly picked - so randomly any number between 1 and 6 (including both)

# As a board game player,
# So that I can play many types of games
# I want to be able to roll any number of dice at the same time

# As a board game player,
# So that I know what my score was when I rolled several dice
# I want to get the result of each dice roll

# Your focus here should be on adopting a rigorous TDD process - Red, Green, Refactor.


require 'index'

# I need to require the file i'm testing

# I need to start a describe block that sets out the object i'm testing
describe Dice do
  # I want both of these elements to be available freshly each time a test runs
  let(:dice_roll) { rand(1..6) }
  let(:dice) { Dice.new }

  # I want to test that my dice gives me a number between one and six when rolled
  it 'should give a number between 1 and 6 when rolled' do
    # It helped me to use the noun to specify what would happen when the dice is rolled, this is my arrange step
    result = dice_roll
    # I then wanted to check that the result of that roll would be a random number between 1 and 6 inclusive
    # I used the && operator to say that each needs to be true, so it should be greater than or equal to 1 but less than or equal to 6. 
    # I expect that result to be true, so it is in a sense and act and assert in one go
    expect(result >= 1 && result <= 6) .to eq(true)
  end
end

# To sum up, I started with a class dice that wants to be able to roll in my requirements
# I then wanted to feature test the existence of a class dice, that failed, so i wrote the matching unit test that also failed
# Then i wrote code that created the class dice, this meant my test passed

# I then needed to see that i had the ability to roll the dice, so dice.roll or dice_roll (as a variable)..that failed feature testing
# I matched a unit test that failed, then wrote the code to pass by writing a roll method. 
# I used respond_to(:dice_roll) to ensure the existence of that method within the class

# I then looked at the requirements for the roll, it needed to come up with a number between 1 and 6 and it needed to be random.
# I feature tested my def, it failed, my unit test failed, so I used rand(1..6), the test failed so I wrote the code to give me a random number rand(1..6), it passed

# I then refactored to make dice_roll a global let that resets for each test
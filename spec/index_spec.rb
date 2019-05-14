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

describe Dice do
  let(:dice_roll) { rand(1..6) }
  let(:dice) { Dice.new }
  
  it 'should give a number between 1 and 6 when rolled' do
    result = dice_roll
    expect(result >= 1 && result <= 6) .to eq(true)
  end

  it 'should let me roll another dice' do

  end
end


require("sinatra/activerecord")
require("ingredient")
require("recipe")
require("instruction")
require("rspec")
require("pg")

RSpec.configure do |config| # clear db between spec runs
  config.after(:each) do
    Ingredient.all().each() do |ingredient|
      ingredient.destroy
    end
    Instruction.all().each() do |instruction|
      instruction.destroy
    end
    Tag.all().each() do |tag|
      tag.destroy
    end
    Recipe.all().each() do |recipe|
      recipe.destroy
  end
end

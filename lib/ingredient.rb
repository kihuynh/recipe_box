class Ingredient < ActiveRecord::Base
  has_many :recipe
  has_many :instruction, :through => :recipe
end

class Instruction < ActiveRecord::Base
  has_many :recipe
  has_many :ingredient, :through => :recipe
end

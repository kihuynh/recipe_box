class Recipe < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :tags
  belongs_to :instruction
end

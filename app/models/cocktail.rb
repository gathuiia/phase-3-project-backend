class Cocktail < ActiveRecord::Base 
    has_one :Bartender
end
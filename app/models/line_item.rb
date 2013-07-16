class LineItem < ActiveRecord::Base
  belongs_to :pins
	belongs_to :cart
  attr_accessible :cart_id, :pins_id
end

class Borrower < ActiveRecord::Base
  has_one :user, :as => :rolable

  has_many :pins
end
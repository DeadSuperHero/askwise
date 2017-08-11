class Department < ApplicationRecord
  has_many :users, inverse_of :department
end

class Department < ApplicationRecord
  has_many :users
  belongs_to :project
end

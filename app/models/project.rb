class Project < ApplicationRecord
  belongs_to :admin
  has_many :questions
  has_many :answers
  has_many :users
end

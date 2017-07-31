class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :tags
  acts_as_taggable_on :tags
end

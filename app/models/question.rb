class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  acts_as_taggable_on :tags
end

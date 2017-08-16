class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  scope :user_answers, ->(user){joins(:question).where("question.user_id": user)}
end

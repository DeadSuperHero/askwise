class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  belongs_to :project
  scope :user_answers, ->(user){joins(:question).where("question.user_id": user)}
end

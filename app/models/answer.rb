class Answer < ApplicationRecord
  belongs_to :question, inverse_of: :answer
  belongs_to :user
end

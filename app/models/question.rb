class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :tags
  acts_as_taggable_on :tags

  def similar
    question_ary = Question.tagged_with(self.tags, :any => true)
    question_ary.uniq.delete(self)
  end

end

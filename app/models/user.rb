class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questions
  has_many :answers, :through => :questions
  has_many :questions_with_answers, :through => :answers, :source => :question
  belongs_to :departments, inverse_of: :users
end

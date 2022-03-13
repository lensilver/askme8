class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :hashtag_questions, dependent: :destroy
  has_many :hashtags, through: :hashtag_questions

  scope :answered, -> { where.not(answer: nil) }
  scope :unanswered, -> { where(answer: nil) }

  validates :text, presence: true, length: { maximum: 255 }
end

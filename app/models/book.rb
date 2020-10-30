class Book < ApplicationRecord
  validates :title, presence: true, length: {minimum:3}
  validates :author, presence: true, length: {minimum:6}
  validates :content, presence: true

  has_many :comments
  belongs_to :user
end
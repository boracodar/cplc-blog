class Post < ApplicationRecord
  extend FriendlyId

  validates :title, :author, :body, presence: true

  has_many :comments

  friendly_id :title, use: :slugged
end

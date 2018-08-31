class Post < ApplicationRecord
  validates :title, :author, :body, presence: true

  has_many :comments
end

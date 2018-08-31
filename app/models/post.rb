class Post < ApplicationRecord
  include PgSearch
  extend FriendlyId

  validates :title, :author, :body, presence: true

  has_many :comments, dependent: :destroy

  friendly_id :title, use: :slugged

  pg_search_scope :search,
    against: %i[title author body],
    associated_against: { comments: %i[body] }
end

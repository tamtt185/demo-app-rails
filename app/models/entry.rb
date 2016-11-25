class Entry < ApplicationRecord
  belongs_to :user
  has_many :comments
  default_scope -> {order(created_at: :desc)}
  validates :user_id, presence: true
  validates :title, presence: true, length: {maximum: 140}
  validates :body, presence: true, length: {maximum: 255}

  self.per_page = 10
end

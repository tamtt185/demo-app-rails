class Entry < ApplicationRecord
  validates :title, presence: true, length: {maximum: 100}
  validates :body, presence: true
end
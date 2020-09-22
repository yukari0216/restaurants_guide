class Article < ApplicationRecord
  scope :by_new, ->{ order(updated_at: :desc) }
  validates :title, presence: true
  validates :body, presence: true
  validates :title, uniqueness: true
end

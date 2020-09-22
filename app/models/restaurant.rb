class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :telephone, presence: true
  validates :name, uniqueness: true
  scope :by_id, ->{ order(id: :desc) }
end

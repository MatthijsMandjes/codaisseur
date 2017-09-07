class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  belongs_to :user
  has_and_belongs_to_many :categories


end
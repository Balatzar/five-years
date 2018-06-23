class Group < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :users
  validates :name, presence: true
end

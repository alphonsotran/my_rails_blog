class Entry < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :text, presence: true
end

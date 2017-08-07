class Entry < ApplicationRecord
  validates :title, :text, presence: true
end

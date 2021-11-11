class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true, uniqueness: { scope: :list }
  validates :title, presence: true
  validates :comment, length: { minimum: 6 }
end

class Article < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: true
  validates :user, presence: true
end

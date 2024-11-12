class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minmimum: 10 }
end

class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUES = [ "public", "private", "archived" ]

  validates :status inclusions: { in: VALID_STATUES }

  def archived
    status == "archived"
  end
end

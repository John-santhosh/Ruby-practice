class Book < ApplicationRecord
  has_many :articles
  belongs_to :author
end

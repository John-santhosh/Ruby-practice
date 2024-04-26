class Author < ApplicationRecord
  has_many :books
  has_many :articles, through: :books
end

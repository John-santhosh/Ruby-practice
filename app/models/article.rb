class Article < ApplicationRecord
  belongs_to :book
  # has_one :author, through: :book
end

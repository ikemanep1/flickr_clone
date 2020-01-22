class Image < ApplicationRecord
  has_many :tags, dependent: :destroy
end

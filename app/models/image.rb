class Image < ApplicationRecord
  has_many :tags, dependent: :destroy
  has_one_attached :profile_picture
end

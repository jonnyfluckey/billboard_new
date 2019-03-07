class Song < ApplicationRecord

  belongs_to :artist
  has_many :billboards, through: :ranks
end

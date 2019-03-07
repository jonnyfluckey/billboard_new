class Billboard < ApplicationRecord

  has_many :songs, through: :ranks
end

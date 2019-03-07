class Rank < ApplicationRecord
  belongs_to :billboard, optional: true
  belongs_to :song, optional: true
end

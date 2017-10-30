class Track < ApplicationRecord
  validates :title, :ord, :album_id, presence: true
  validates :bonus, inclusion: { in: [true, false] }

  belongs_to :album

  has_one :band,
    through: :album,
    source: :band
end

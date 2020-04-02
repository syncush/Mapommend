class GeoMark < ApplicationRecord
    acts_as_votable
    belongs_to :user
    validates_presence_of :longtitude, :latitude
    validates_inclusion_of :public, :in => [true, false]
    has_many :geo_marks_share, :inverse_of =>  :geo_mark
end

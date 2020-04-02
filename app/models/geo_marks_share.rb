class GeoMarksShare < ApplicationRecord
    belongs_to :user, :inverse_of => :geo_marks_share
    belongs_to :geo_mark, :inverse_of => :geo_marks_share
end

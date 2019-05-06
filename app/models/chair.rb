class Chair < ApplicationRecord
    belongs_to :patron
    has_many :occupant
end

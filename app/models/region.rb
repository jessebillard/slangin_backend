class Region < ApplicationRecord
    has_many :sayings
    has_many :regions, through: :sayings
end

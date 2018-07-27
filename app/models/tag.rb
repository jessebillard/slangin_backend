class Tag < ApplicationRecord
    has_many :saying_tags
    has_many :sayings, through: :saying_tags
end

class Saying < ApplicationRecord
    belongs_to :user
    belongs_to :region
    has_one_attached :recording
end

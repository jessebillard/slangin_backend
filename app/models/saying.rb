class Saying < ApplicationRecord
    belongs_to :user
    belongs_to :region
    has_many :saying_tags
    has_many :tags, through: :saying_tags
    has_one_attached :recording
end

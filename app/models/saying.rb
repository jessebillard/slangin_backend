class Saying < ApplicationRecord
    belongs_to :user
    belongs_to :region
    has_many :tags, through: :sayingtags
    has_one_attached :recording
end

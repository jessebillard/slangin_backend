class Tag < ApplicationRecord
    has_many :sayings, through: :sayingtags
end

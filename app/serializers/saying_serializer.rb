class SayingSerializer < ActiveModel::Serializer
    attributes :tags, :title, :description, :votes, :region, :user_id, :region_id, :id
end
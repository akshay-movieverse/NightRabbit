class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :page_url, :metadata
end

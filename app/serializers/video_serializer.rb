class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :video_url, :metadata
end

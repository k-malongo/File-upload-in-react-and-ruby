class RedflagSerializer
  include JSONAPI::Serializer
  attributes :id, :description, :image_url
end

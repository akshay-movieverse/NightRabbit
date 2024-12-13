class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :expires_at
end

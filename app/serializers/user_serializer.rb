class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :expires_at
end

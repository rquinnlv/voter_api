class UserSerializer < ActiveModel::Serializer
  attributes :id, :address1, :address2, :city, :state, :zipcode, :token
end

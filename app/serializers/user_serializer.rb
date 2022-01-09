class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :institution, :notifications, :milestones
end

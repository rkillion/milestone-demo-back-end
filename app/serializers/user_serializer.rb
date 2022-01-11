class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :institution, :notifications, :milestones, :assigned_milestones
end

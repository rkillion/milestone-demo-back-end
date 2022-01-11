class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :institution, :notifications, :created_milestones, :assigned_milestones
end

class MilestoneSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :action_required, :user
  has_many :assignees
end

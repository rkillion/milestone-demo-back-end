class User < ApplicationRecord
    has_many :milestones
    has_many :assignments
    has_many :assigned_milestones, through: :assignments, source: :milestone
end

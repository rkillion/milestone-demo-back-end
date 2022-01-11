class User < ApplicationRecord
    has_many :milestones
    has_many :assignments
    # has_many :assigned_milestones, through: :assignments, source: :milestone

    def assigned_milestones
        self.assignments.map{|assignment| assignment.milestone}.map{|milestone| {
            id: milestone.id,
            title: milestone.title,
            date: milestone.date,
            action_required: milestone.action_required,
            assignees: milestone.assignees
        }}
    end

    def created_milestones
        self.milestones.map{|milestone| {
            id: milestone.id,
            title: milestone.title,
            date: milestone.date,
            action_required: milestone.action_required,
            assignees: milestone.assignees
        }}
    end
end

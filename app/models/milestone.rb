class Milestone < ApplicationRecord
    belongs_to :user
    has_many :assignments
    has_many :assignees, through: :assignments, class_name: "User", foreign_key: :user_id
    validates :title, presence: true, uniqueness: {scope: :date, message: "already exists on this date. Choose a different title or date."}
    validates :date, presence: true, uniqueness: {scope: :title, message: "already has a milestone with that title. Choose a different title or date."}
end

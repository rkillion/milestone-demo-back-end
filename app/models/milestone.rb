class Milestone < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, uniqueness: {scope: :date, message: "already exists on this date. Choose a different title or date."}
    validates :date, presence: true, uniqueness: {scope: :title, message: "already has a milestone with that title. Choose a different title or date."}
end

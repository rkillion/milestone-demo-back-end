class CreateMilestones < ActiveRecord::Migration[6.1]
  def change
    create_table :milestones do |t|
      t.string :title
      t.datetime :date
      t.boolean :action_required

      t.timestamps
    end
  end
end

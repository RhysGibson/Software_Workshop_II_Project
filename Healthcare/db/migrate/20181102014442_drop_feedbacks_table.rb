class DropFeedbacksTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :feedbacks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

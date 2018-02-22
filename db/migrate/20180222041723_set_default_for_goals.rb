class SetDefaultForGoals < ActiveRecord::Migration[5.1]
  def change
    change_column_default :goals, :value, 0.0
    change_column_default :goals, :goal, 0.0
  end
end

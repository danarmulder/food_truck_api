class ChangeColumnNull < ActiveRecord::Migration
  def change
    change_column_default :trucks, :verified, false
  end
end

class ChangeNewbooksToBooks < ActiveRecord::Migration[5.0]
  def change
    rename_table :newbooks, :boo
  end
end

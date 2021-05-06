class CreateNewbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :newbooks do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

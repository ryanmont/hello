class CreateGreets < ActiveRecord::Migration[5.0]
  def change
    create_table :greets do |t|
      t.text :greeting

      t.timestamps
    end
  end
end

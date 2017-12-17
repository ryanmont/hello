class CreateFirsts < ActiveRecord::Migration[5.0]
  def change
    create_table :firsts do |t|
      t.string :first_name

      t.timestamps
    end
  end
end

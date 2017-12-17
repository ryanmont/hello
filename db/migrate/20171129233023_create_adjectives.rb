class CreateAdjectives < ActiveRecord::Migration[5.0]
  def change
    create_table :adjectives do |t|
      t.string :description

      t.timestamps
    end
  end
end

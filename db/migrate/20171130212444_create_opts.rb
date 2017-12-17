class CreateOpts < ActiveRecord::Migration[5.0]
  def change
    create_table :opts do |t|
      t.string :class
      t.string :user
      t.references :adjective, foreign_key: true

      t.timestamps
    end
  end
end

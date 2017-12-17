class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :type
      t.string :user
      t.references :adjective, foreign_key: true

      t.timestamps
    end
  end
end

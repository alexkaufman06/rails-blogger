class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :date
      t.string :comment

      t.timestamps
    end
  end
end

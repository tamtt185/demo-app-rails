class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :user
      t.string :references
      t.string :entry
      t.string :references

      t.timestamps
    end
  end
end

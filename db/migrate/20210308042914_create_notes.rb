class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.text :tags

      t.timestamps
    end
  end
end

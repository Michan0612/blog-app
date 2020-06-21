class CreateCommet < ActiveRecord::Migration[6.0]
  def change
    create_table :commets do |t|
      t.references :article, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end

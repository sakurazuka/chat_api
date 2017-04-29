class CreateReactions < ActiveRecord::Migration[5.0]
  def change
    create_table :reactions do |t|
      t.string :emoji
      t.references :message, index: true

      t.timestamps
    end
  end
end

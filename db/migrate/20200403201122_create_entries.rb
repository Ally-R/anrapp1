class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.integer :season
      t.integer :episode
      t.string :response_to
      t.string :comment
      t.string :sources

      t.timestamps
    end
  end
end

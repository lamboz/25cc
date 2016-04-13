class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.datetime :published_at
      t.integer :duration

      t.timestamps
      t.index :published_at
    end
  end
end

class CreateAudios < ActiveRecord::Migration[5.0]
  def change
    create_table :audios do |t|
      t.string :media_data
      t.references :episode, foreign_key: true
      t.string :url
      t.string :duration

      t.timestamps
    end
  end
end

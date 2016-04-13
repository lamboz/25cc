class CreateAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.references :episode, foreign_key: true
      t.references :host, foreign_key: true

      t.timestamps

      t.index [:episode_id, :host_id]
      t.index [:host_id, :episode_id]
    end
  end
end

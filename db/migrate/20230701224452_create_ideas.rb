class CreateIdeas < ActiveRecord::Migration[7.0]
  def change
    create_table :ideas do |t|
      t.integer :retro_id, foreign_key: true
      t.text :topic
      t.string :template_type

      t.timestamps
    end
  end
end

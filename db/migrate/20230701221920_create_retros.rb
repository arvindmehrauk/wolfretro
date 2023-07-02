class CreateRetros < ActiveRecord::Migration[7.0]
  def change
    create_table :retros do |t|
      t.string :name
      t.text :context
      t.integer :team

      t.timestamps
    end
  end
end

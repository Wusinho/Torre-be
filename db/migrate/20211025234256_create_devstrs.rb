class CreateDevstrs < ActiveRecord::Migration[6.1]
  def change
    create_table :devstrs do |t|
      t.string :name
      t.string :proficiency
      t.references :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

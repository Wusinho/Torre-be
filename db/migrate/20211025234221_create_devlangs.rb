class CreateDevlangs < ActiveRecord::Migration[6.1]
  def change
    create_table :devlangs do |t|
      t.string :language
      t.string :fluency
      t.references :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

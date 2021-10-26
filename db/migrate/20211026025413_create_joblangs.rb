class CreateJoblangs < ActiveRecord::Migration[6.1]
  def change
    create_table :joblangs do |t|
      t.string :language
      t.string :fluency
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end

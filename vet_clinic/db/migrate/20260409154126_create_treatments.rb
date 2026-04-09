class CreateTreatments < ActiveRecord::Migration[7.2]
  def change
    create_table :treatments do |t|
      t.references :appointment, null: false, foreign_key: true
      t.string :name
      t.string :medication
      t.string :dosage
      t.text :notes
      t.datetime :administered_at

      t.timestamps
    end
  end
end

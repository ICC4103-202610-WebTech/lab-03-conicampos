class CreateVets < ActiveRecord::Migration[7.2]
  def change
    create_table :vets do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :specialization

      t.timestamps
    end
  end
end

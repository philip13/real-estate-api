class CreateRealEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :real_estates do |t|
      t.string :name, limit: 128
      t.string :real_state_type
      t.string :street, limit: 128
      t.string :external_number, limit: 12
      t.string :internal_number
      t.string :neighborhood, limit: 128
      t.string :city, limit: 64
      t.string :country
      t.integer :rooms
      t.integer :bathrooms
      t.string :comments, limit: 128

      t.timestamps
    end
  end
end

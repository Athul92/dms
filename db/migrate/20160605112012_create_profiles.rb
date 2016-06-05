class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :bike_owned
      t.string :gender
      t.string :riding_since
      t.string :profession
      t.string :location
      t.text :bio
      t.text :address
      t.string :mobile
      t.string :android_token
      t.string :ios_token
      t.string :auth_token

      t.timestamps null: false
    end
  end
end

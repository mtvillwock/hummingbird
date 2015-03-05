class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Required
      t.string :provider, :null => false
      t.string :uid, :null => false, :default => ""

      ## User Info
      t.string :name
      t.string :nickname
      t.string :image
      t.string :email

      # Phone number and verifications
      t.string :phone_number
      t.string :verification_code
      t.boolean :phone_verified, :default => false

      ## Tokens
      t.text :tokens

      t.timestamps
    end
  end
end

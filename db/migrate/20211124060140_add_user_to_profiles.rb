class AddUserToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :user, index: true
    add_foreign_key :profiles, :users
  end
end

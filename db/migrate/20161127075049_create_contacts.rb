class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string(:name, :email, :message)

      t.timestamps
    end
  end
end

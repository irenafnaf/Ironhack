class ChangePhoneInContacts < ActiveRecord::Migration
  def change
  	change_column :contacts, :phone, :string

  end
end

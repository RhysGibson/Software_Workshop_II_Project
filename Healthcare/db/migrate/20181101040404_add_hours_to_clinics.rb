class AddHoursToClinics < ActiveRecord::Migration[5.2]
  def change
    add_column :clinics, :hours, :string
  end
end

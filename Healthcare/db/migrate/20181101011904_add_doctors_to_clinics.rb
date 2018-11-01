class AddDoctorsToClinics < ActiveRecord::Migration[5.2]
  def change
    add_column :clinics, :doctors, :string
  end
end

class AddStatutReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :statut, :string, default: 'En attente'
  end
end

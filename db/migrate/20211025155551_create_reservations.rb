class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :car
      t.date :date

      t.timestamps
    end
  end
end

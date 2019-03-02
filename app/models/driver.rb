class Driver < ActiveRecord::Base
  has_one :rental

  scope :no_rentals, -> { 
    includes(:rental)
      .references(:rental)
      .where(
        where(rentals: {driver_id: nil})
        .where.not(rentals: {ended: nil})
        .where_values.inject(:or)
      )
  }
end

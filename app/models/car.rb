class Car < ActiveRecord::Base
  has_one :rental

  scope :no_rentals, -> { 
    includes(:rental)
      .references(:rental)
      .where(
        where(rentals: {car_id: nil})
        .where.not(rentals: {ended: nil})
        .where_values.inject(:or)
      )
  }

  def set_new_mileage!
    self.milage = mileage * 2
    save!
  end
end

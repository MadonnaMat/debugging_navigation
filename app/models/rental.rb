class Rental < ActiveRecord::Base
  LATE_FEE_PER_DAY = 100
  belongs_to :driver
  belongs_to :car

  before_save :set_end_by
  before_save :set_late_fee

  before_destroy :double_car_miles

  def set_end_by
    self.end_by = start + 1.week if new_record?
  end

  def set_late_fee
    if ended > end_by
      self.late_fee = LATE_FEE_PER_DAY * (ended - end_by)/1.day
    end
  end

  def double_car_miles
    car.set_new_mileage!
  end
end

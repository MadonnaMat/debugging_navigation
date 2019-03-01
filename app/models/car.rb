class Car < ActiveRecord::Base

  def set_new_mileage!
    self.milage = mileage * 2
    save!
  end
end

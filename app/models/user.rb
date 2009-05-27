class User < ActiveRecord::Base
  acts_as_authentic
  has_one :plate
  
  after_create :make_users_plate
  
  def make_users_plate()
    self.plate = Plate.new(:name => self.login)
    self.plate.save
  end
end

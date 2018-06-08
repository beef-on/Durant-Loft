class Shift < ApplicationRecord
  has_many :users
  validate :same_date#, :all_different

  # def all_different
  # 	self.manner1 != self.manner2 && self.manner1 != self.manner3 && self.manner3 != self.manner1
  # end

  def same_date
    self.start.strftime("%Y-%m-%d") == self.end.strftime("%Y-%m-%d")
  end

  def start_time
  	self.start
  end

  def end_time
  	self.end
  end
end

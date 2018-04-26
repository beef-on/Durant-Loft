class Shift < ApplicationRecord
  belongs_to :manner1, optional: true
  belongs_to :manner2, optional: true
  belongs_to :manner3, optional: true
  validate :all_different, :same_date

  def all_different
  	self.manner1 != self.manner2 && self.manner1 != self.manner3 && self.manner3 != self.manner1
  end

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

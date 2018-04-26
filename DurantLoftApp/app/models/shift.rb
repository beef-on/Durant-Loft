class Shift < ApplicationRecord
  belongs_to :manner1, optional: true
  belongs_to :manner2, optional: true
  belongs_to :manner3, optional: true
  validate :all_different

  def all_different
  	:manner1 != :manner2 && :manner1 != :manner3 && :manner3 != :manner1
  end

  def start_time
  	self.start
  end

  def end_time
  	self.end
  end
end

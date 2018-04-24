class Shift < ApplicationRecord
  belongs_to :manner1, optional: true
  belongs_to :manner2, optional: true
  belongs_to :manner3, optional: true
end

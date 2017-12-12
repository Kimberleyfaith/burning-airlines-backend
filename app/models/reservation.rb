# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  seat       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  flight_id  :integer
#  user_id    :integer
#

class Reservation < ApplicationRecord
  belongs_to :flight
  belongs_to :user

  validates :seat, :presence => true, format: { with: /\A[A-Z]\d+\z/, message: "format incorrect. Please enter seat number in the correct format, e.g. A1."}
  validates_uniqueness_of :seat, :scope => [:flight_id] # checks if seat is taken
  validate :seat_limits

  private
  def seat_limits
    row = seat[0].ord - 64
    col = seat[1..seat.size].to_i
    plane_rows = self.flight.plane.rows
    plane_cols = self.flight.plane.cols

    if row > plane_rows
      errors.add(:seat, "row doesn't exist. Please capitalize the letter or check the number of rows on the plane for this flight.")
    end
    if col < 1
      errors.add(:seat, "column doesn't exist.")
    end
    if col > plane_cols
      errors.add(:seat, "column doesn't exist. Check the number of columns on the plane for this flight.")
    end
  end
end

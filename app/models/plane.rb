# == Schema Information
#
# Table name: planes
#
#  id         :integer          not null, primary key
#  name       :text
#  rows       :integer
#  cols       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plane < ApplicationRecord
  has_many :flights

  validates :name, :presence => true, :uniqueness => true
  validates :rows, :presence => true
  validates :cols, :presence => true
end

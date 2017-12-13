# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  passcode        :string
#

class User < ApplicationRecord
  has_secure_password

  has_many :reservations

  validates :name, :presence => true, :uniqueness => true
end

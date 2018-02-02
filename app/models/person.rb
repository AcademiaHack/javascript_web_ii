# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  birthdate  :date
#  gender     :integer
#  dni        :string
#  customer   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ApplicationRecord
  enum gender: %i[male female unknown]
  has_many :hobbies

  accepts_nested_attributes_for :hobbies, reject_if: proc { |attributes| attributes['name'].blank? }
end

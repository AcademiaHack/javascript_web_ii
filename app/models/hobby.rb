# == Schema Information
#
# Table name: hobbies
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  kind        :integer
#  person_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_hobbies_on_person_id  (person_id)
#

class Hobby < ApplicationRecord
  enum kind: %i[indoors outdoors]

  belongs_to :person
end

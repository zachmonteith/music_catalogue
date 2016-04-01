# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  lyrics     :text
#  album_id   :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Track < ActiveRecord::Base
  validates :name, :album_id, presence: true

  belongs_to :album
end

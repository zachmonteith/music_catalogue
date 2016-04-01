# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  live       :boolean          not null
#  band_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base
  validates :name, :band_id, presence: true
  belongs_to :band
  has_many :tracks, dependent: :destroy
  attr_reader :albums

  def albums
    @albums = Album.all
  end



end

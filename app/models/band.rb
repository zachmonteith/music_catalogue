# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Band < ActiveRecord::Base
  validates :name, presence: true

  has_many :albums, dependent: :destroy

  has_many :tracks,
  through: :albums,
  source: :tracks

  def bands
    @bands = Band.all
  end
end

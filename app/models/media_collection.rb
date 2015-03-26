# == Schema Information
#
# Table name: media_collections
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  shared      :boolean          default(FALSE)
#

class MediaCollection < ActiveRecord::Base

  belongs_to :user
  has_many :items, -> { order('created_at DESC') }, inverse_of: :media_collection, dependent: :destroy
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
  
  validates_presence_of :title, :description
  validates_associated :items
  
  scope :shared, -> { where(shared: true) }
  
end

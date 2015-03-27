# == Schema Information
#
# Table name: items
#
#  id                  :integer          not null, primary key
#  title               :string
#  body                :string
#  media_collection_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  photo_file_name     :string
#  photo_content_type  :string
#  photo_file_size     :integer
#  photo_updated_at    :datetime
#
require 'uri'
class Item < ActiveRecord::Base
  
  belongs_to :media_collection
  validates :media_collection, presence: true

  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  
  validates_presence_of :title, :body
  validates_format_of :body, with: URI.regexp

end

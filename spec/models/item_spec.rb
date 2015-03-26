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

require 'rails_helper'

RSpec.describe Item, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

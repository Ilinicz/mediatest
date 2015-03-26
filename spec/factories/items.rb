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

FactoryGirl.define do
  factory :item do
    title "MyString"
body "MyString"
media_collection nil
  end

end

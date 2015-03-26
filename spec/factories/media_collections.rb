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

FactoryGirl.define do
  factory :media_collection do
    title "MyString"
description "MyString"
  end

end

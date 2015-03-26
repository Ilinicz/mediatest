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

require 'rails_helper'

RSpec.describe MediaCollection, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

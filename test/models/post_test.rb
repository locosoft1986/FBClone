# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  author_id  :integer          not null
#  content    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

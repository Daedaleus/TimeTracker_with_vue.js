# == Schema Information
#
# Table name: work_logs
#
#  id         :integer          not null, primary key
#  day        :date
#  hours      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class WorkLogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

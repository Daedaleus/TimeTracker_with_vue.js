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

class WorkLog < ApplicationRecord
  belongs_to :project
end

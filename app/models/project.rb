class Project < ApplicationRecord
  has_many :work_logs, dependent: :destroy

  accepts_nested_attributes_for :work_logs, allow_destroy: true
end

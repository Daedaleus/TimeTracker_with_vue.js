json.extract! work_log, :id, :day, :hours, :created_at, :updated_at
json.url work_log_url(work_log, format: :json)

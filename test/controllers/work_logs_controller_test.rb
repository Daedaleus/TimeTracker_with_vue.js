require 'test_helper'

class WorkLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_log = work_logs(:one)
    @project = projects(:one)
  end

  test "should get index" do
    get project_work_logs_url(project_id: @project.id)
    assert_response :success
  end

  test "should get new" do
    get new_project_work_log_url(project_id: @project.id)
    assert_response :success
  end

  test "should create work_log" do
    assert_difference('WorkLog.count') do
      post project_work_logs_url(project_id: @project.id), params: { work_log: { day: @work_log.day, hours: @work_log.hours } }
    end

    assert_redirected_to project_work_logs_url(id:WorkLog.last.id, project_id: @project.id)
  end

  test "should show work_log" do
    get project_work_log_url(project_id: @project.id, id: @work_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_work_log_url(project_id: @project.id, id: @work_log)
    assert_response :success
  end

  test "should update work_log" do
    patch project_work_log_url(project_id: @project.id, id: @work_log), params: { work_log: { day: @work_log.day, hours: @work_log.hours } }
    assert_redirected_to project_work_log_url(project_id: @project.id, id: @work_log.id)
  end

  test "should destroy work_log" do
    assert_difference('WorkLog.count', -1) do
      delete project_work_log_url(project_id: @project.id, id: @work_log)
    end

    assert_redirected_to project_work_logs_url(project_id: @project.id)
  end
end

require "application_system_test_case"

class WorkLogsTest < ApplicationSystemTestCase
  setup do
    @work_log = work_logs(:one)
  end

  test "visiting the index" do
    visit work_logs_url
    assert_selector "h1", text: "Work Logs"
  end

  test "creating a Work log" do
    visit work_logs_url
    click_on "New Work Log"

    fill_in "Day", with: @work_log.day
    fill_in "Hours", with: @work_log.hours
    click_on "Create Work log"

    assert_text "Work log was successfully created"
    click_on "Back"
  end

  test "updating a Work log" do
    visit work_logs_url
    click_on "Edit", match: :first

    fill_in "Day", with: @work_log.day
    fill_in "Hours", with: @work_log.hours
    click_on "Update Work log"

    assert_text "Work log was successfully updated"
    click_on "Back"
  end

  test "destroying a Work log" do
    visit work_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work log was successfully destroyed"
  end
end

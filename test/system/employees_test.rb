require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "About", with: @employee.about
    fill_in "Country", with: @employee.country
    fill_in "Currentposition", with: @employee.currentposition
    fill_in "Dob", with: @employee.dob
    fill_in "Email", with: @employee.email
    fill_in "Firstname", with: @employee.firstname
    fill_in "Gender", with: @employee.gender
    fill_in "Industry", with: @employee.industry
    fill_in "Lastname", with: @employee.lastname
    fill_in "Location", with: @employee.location
    fill_in "Phone", with: @employee.phone
    fill_in "Skills", with: @employee.skills
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "About", with: @employee.about
    fill_in "Country", with: @employee.country
    fill_in "Currentposition", with: @employee.currentposition
    fill_in "Dob", with: @employee.dob
    fill_in "Email", with: @employee.email
    fill_in "Firstname", with: @employee.firstname
    fill_in "Gender", with: @employee.gender
    fill_in "Industry", with: @employee.industry
    fill_in "Lastname", with: @employee.lastname
    fill_in "Location", with: @employee.location
    fill_in "Phone", with: @employee.phone
    fill_in "Skills", with: @employee.skills
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end

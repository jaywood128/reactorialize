require "application_system_test_case"

class TutorialModulesTest < ApplicationSystemTestCase
  setup do
    @tutorial_module = tutorial_modules(:one)
  end

  test "visiting the index" do
    visit tutorial_modules_url
    assert_selector "h1", text: "Tutorial Modules"
  end

  test "creating a Tutorial module" do
    visit tutorial_modules_url
    click_on "New Tutorial Module"

    click_on "Create Tutorial module"

    assert_text "Tutorial module was successfully created"
    click_on "Back"
  end

  test "updating a Tutorial module" do
    visit tutorial_modules_url
    click_on "Edit", match: :first

    click_on "Update Tutorial module"

    assert_text "Tutorial module was successfully updated"
    click_on "Back"
  end

  test "destroying a Tutorial module" do
    visit tutorial_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tutorial module was successfully destroyed"
  end
end

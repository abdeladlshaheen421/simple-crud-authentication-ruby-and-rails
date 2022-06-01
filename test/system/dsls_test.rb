require "application_system_test_case"

class DslsTest < ApplicationSystemTestCase
  setup do
    @dsl = dsls(:one)
  end

  test "visiting the index" do
    visit dsls_url
    assert_selector "h1", text: "Dsls"
  end

  test "should create dsl" do
    visit dsls_url
    click_on "New dsl"

    fill_in "Field", with: @dsl.field
    click_on "Create Dsl"

    assert_text "Dsl was successfully created"
    click_on "Back"
  end

  test "should update Dsl" do
    visit dsl_url(@dsl)
    click_on "Edit this dsl", match: :first

    fill_in "Field", with: @dsl.field
    click_on "Update Dsl"

    assert_text "Dsl was successfully updated"
    click_on "Back"
  end

  test "should destroy Dsl" do
    visit dsl_url(@dsl)
    click_on "Destroy this dsl", match: :first

    assert_text "Dsl was successfully destroyed"
  end
end

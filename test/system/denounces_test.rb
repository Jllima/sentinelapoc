require "application_system_test_case"

class DenouncesTest < ApplicationSystemTestCase
  setup do
    @denounce = denounces(:one)
  end

  test "visiting the index" do
    visit denounces_url
    assert_selector "h1", text: "Denounces"
  end

  test "should create denounce" do
    visit denounces_url
    click_on "New denounce"

    fill_in "Desc", with: @denounce.desc
    click_on "Create Denounce"

    assert_text "Denounce was successfully created"
    click_on "Back"
  end

  test "should update Denounce" do
    visit denounce_url(@denounce)
    click_on "Edit this denounce", match: :first

    fill_in "Desc", with: @denounce.desc
    click_on "Update Denounce"

    assert_text "Denounce was successfully updated"
    click_on "Back"
  end

  test "should destroy Denounce" do
    visit denounce_url(@denounce)
    click_on "Destroy this denounce", match: :first

    assert_text "Denounce was successfully destroyed"
  end
end

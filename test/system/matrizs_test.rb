require "application_system_test_case"

class MatrizsTest < ApplicationSystemTestCase
  setup do
    @matriz = matrizs(:one)
  end

  test "visiting the index" do
    visit matrizs_url
    assert_selector "h1", text: "Matrizs"
  end

  test "creating a Matriz" do
    visit matrizs_url
    click_on "New Matriz"

    fill_in "Nome", with: @matriz.nome
    click_on "Create Matriz"

    assert_text "Matriz was successfully created"
    click_on "Back"
  end

  test "updating a Matriz" do
    visit matrizs_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @matriz.nome
    click_on "Update Matriz"

    assert_text "Matriz was successfully updated"
    click_on "Back"
  end

  test "destroying a Matriz" do
    visit matrizs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Matriz was successfully destroyed"
  end
end

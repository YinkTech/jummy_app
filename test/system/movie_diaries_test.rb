require "application_system_test_case"

class MovieDiariesTest < ApplicationSystemTestCase
  setup do
    @movie_diary = movie_diaries(:one)
  end

  test "visiting the index" do
    visit movie_diaries_url
    assert_selector "h1", text: "Movie diaries"
  end

  test "should create movie diary" do
    visit movie_diaries_url
    click_on "New movie diary"

    fill_in "Date", with: @movie_diary.date
    fill_in "Fact", with: @movie_diary.fact
    fill_in "Title", with: @movie_diary.title
    click_on "Create Movie diary"

    assert_text "Movie diary was successfully created"
    click_on "Back"
  end

  test "should update Movie diary" do
    visit movie_diary_url(@movie_diary)
    click_on "Edit this movie diary", match: :first

    fill_in "Date", with: @movie_diary.date
    fill_in "Fact", with: @movie_diary.fact
    fill_in "Title", with: @movie_diary.title
    click_on "Update Movie diary"

    assert_text "Movie diary was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie diary" do
    visit movie_diary_url(@movie_diary)
    click_on "Destroy this movie diary", match: :first

    assert_text "Movie diary was successfully destroyed"
  end
end

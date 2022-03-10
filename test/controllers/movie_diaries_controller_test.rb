require "test_helper"

class MovieDiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_diary = movie_diaries(:one)
  end

  test "should get index" do
    get movie_diaries_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_diary_url
    assert_response :success
  end

  test "should create movie_diary" do
    assert_difference("MovieDiary.count") do
      post movie_diaries_url, params: { movie_diary: { date: @movie_diary.date, fact: @movie_diary.fact, title: @movie_diary.title } }
    end

    assert_redirected_to movie_diary_url(MovieDiary.last)
  end

  test "should show movie_diary" do
    get movie_diary_url(@movie_diary)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_diary_url(@movie_diary)
    assert_response :success
  end

  test "should update movie_diary" do
    patch movie_diary_url(@movie_diary), params: { movie_diary: { date: @movie_diary.date, fact: @movie_diary.fact, title: @movie_diary.title } }
    assert_redirected_to movie_diary_url(@movie_diary)
  end

  test "should destroy movie_diary" do
    assert_difference("MovieDiary.count", -1) do
      delete movie_diary_url(@movie_diary)
    end

    assert_redirected_to movie_diaries_url
  end
end

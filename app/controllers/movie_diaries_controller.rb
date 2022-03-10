class MovieDiariesController < ApplicationController
  before_action :set_movie_diary, only: %i[ show edit update destroy ]

  # GET /movie_diaries or /movie_diaries.json
  def index
    @movie_diaries = MovieDiary.all
  end

  # GET /movie_diaries/1 or /movie_diaries/1.json
  def show
  end

  # GET /movie_diaries/new
  def new
    @movie_diary = MovieDiary.new
  end

  # GET /movie_diaries/1/edit
  def edit
  end

  # POST /movie_diaries or /movie_diaries.json
  def create
    @movie_diary = MovieDiary.new(movie_diary_params)

    respond_to do |format|
      if @movie_diary.save
        format.html { redirect_to movie_diary_url(@movie_diary), notice: "Movie diary was successfully created." }
        format.json { render :show, status: :created, location: @movie_diary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_diaries/1 or /movie_diaries/1.json
  def update
    respond_to do |format|
      if @movie_diary.update(movie_diary_params)
        format.html { redirect_to movie_diary_url(@movie_diary), notice: "Movie diary was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_diary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_diaries/1 or /movie_diaries/1.json
  def destroy
    @movie_diary.destroy

    respond_to do |format|
      format.html { redirect_to movie_diaries_url, notice: "Movie diary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_diary
      @movie_diary = MovieDiary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_diary_params
      params.require(:movie_diary).permit(:title, :fact, :date)
    end
end

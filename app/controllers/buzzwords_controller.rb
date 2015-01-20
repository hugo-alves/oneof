class BuzzwordsController < ApplicationController
  before_action :set_buzzword, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @buzzwords = Buzzword.all
    respond_with(@buzzwords)
  end

  def show
    respond_with(@buzzword)
  end

  def new
    @buzzword = current_user.buzzwords.build
    respond_with(@buzzword)
  end

  def edit
  end

  def create
    @buzzword = current_user.buzzwords.build(buzzword_params)
    @buzzword.save
    respond_with(@buzzword)
  end

  def update
    @buzzword.update(buzzword_params)
    respond_with(@buzzword)
  end

  def destroy
    @buzzword.destroy
    respond_with(@buzzword)
  end

  def upvote
    @buzzword = Buzzword.find(params[:id])
    current_user.vote_exclusively_for(@buzzword)
    redirect_to :back
  end

  def downvote
    @buzzword = Buzzword.find(params[:id])
    current_user.vote_exclusively_against(@buzzword)
    redirect_to :back
  end

  private
    def set_buzzword
      @buzzword = Buzzword.find(params[:id])
    end

    def buzzword_params
      params.require(:buzzword).permit(:title, :url, :industry)
    end
end

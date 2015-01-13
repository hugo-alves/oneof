class BuzzwordsController < ApplicationController
  before_action :set_buzzword, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @buzzwords = Buzzword.all
    respond_with(@buzzwords)
  end

  def show
    respond_with(@buzzword)
  end

  def new
    @buzzword = Buzzword.new
    respond_with(@buzzword)
  end

  def edit
  end

  def create
    @buzzword = Buzzword.new(buzzword_params)
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

  private
    def set_buzzword
      @buzzword = Buzzword.find(params[:id])
    end

    def buzzword_params
      params.require(:buzzword).permit(:title, :url)
    end
end

class CardsController < ApplicationController
  before_action :set_list

  def new
    @card = @list.cards.new
  end

  def create
    @card = @list.cards.create!(card_params)
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @list }
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def card_params
    params.require(:card).permit(:content)
  end

end
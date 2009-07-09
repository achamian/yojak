class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def edit
    @card = Card.find(params[:id])
  end

  def create
    @card = Card.new(params[:card])
    if @card.save
      flash[:notice] = 'Card was successfully created.'
      redirect_to(@card)
    else
      render :action => "new"
    end
  end

  def update
    @card = Card.find(params[:id])

    if @card.update_attributes(params[:card])
      flash[:notice] = 'Card was successfully updated.'
      redirect_to(@card)
    else
      render :action => "edit"
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to(cards_url)
  end
end

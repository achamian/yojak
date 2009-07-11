class CardStatusesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @card_statuses = @project.card_statuses
  end

  def create
    card_status = CardStatus.new(params[:card_status])
    card_status.project_id = params[:project_id]
    if card_status.save
      flash[:notice] = 'Card Status was successfully created.'
    end
    redirect_to(project_card_statuses_url(params[:project_id]))
  end

  def update
    card_status = CardStatus.find(params[:id])
    if card_status.update_attributes(params[:card_status])
      flash[:notice] = 'Card Status was successfully updated.'
    end
    redirect_to(project_card_statuses_url(params[:project_id]))
  end

  def destroy
    card_status = CardStatus.find(params[:id])
    card_status.destroy
    flash[:notice] = 'Card Status was successfully removed.'
    redirect_to(project_card_statuses_url(params[:project_id]))
  end
end

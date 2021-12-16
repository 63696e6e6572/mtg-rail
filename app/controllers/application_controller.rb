class ApplicationController < ActionController::Base
  before_action :redirect_cancel, only: [:create, :update]

  def index
  end

  private
  def redirect_cancel
    redirect_to @card = Card.find(params[:id]) if params[:cancel]
  end
end

class RequestsController < ApplicationController
  respond_to :html

  def create
    @requester = Request.new(params[:request])
    if @requester
      Mailer.contact_email(@requester).deliver
      redirect_to new_developer_path
    else
      redirect_to root_path
    end
  end

  private

  def request_params
    params.require(:request).permit(:name, :email, :message)
  end
end
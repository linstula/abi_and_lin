class Api::V1::GuestsController < ApplicationController
  def index
    guests = Guest.all

    render json: guests
  end

  def update
    guest = Guest.find(params[:id])
    guest.update_attributes(guest_params)

    render json: guest
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :rsvp_status, :visit_duration, :group_id)
  end
end

class Api::V1::GuestsController < ApplicationController
  def index
    guests = Guest.where(group_id: params[:group_id])

    render json: guests
  end
end

class Api::V1::GroupsController < ApplicationController
  def index
    groups = Group.all

    render json: groups
  end

  def update
    group = Group.find(params[:id])
    group.update_attributes(group_params)

    render json: group
  end

  private

  def group_params
    params.require(:group).permit(:name, :email)
  end
end

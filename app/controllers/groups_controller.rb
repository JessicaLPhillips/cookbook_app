class GroupsController < ApplicationController
  before_action :authenticate_user!

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
      if @group.save
        redirect_to group_path(@group), notice: "Group Created!"
      else
       render :new
      end
  end

  def edit
  end

  def update
  end

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :location)
  end
end

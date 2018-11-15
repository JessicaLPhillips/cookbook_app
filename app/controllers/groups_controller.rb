class GroupsController < ApplicationController
  before_action :authenticate_user!

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user
      if @group.save
        redirect_to group_path(@group), notice: "Group Created!"
      else
        flash[:group_errors] = @group.errors.full_messages 
        render :new
      end
  end

  def edit
  end

  def update
  end

  def index
    @my_groups = current_user.groups.all
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def add_user
    @group = Group.find(params[:id])
    unless current_user.groups.include?(@group)
      @group.users << current_user
    end
  end  

  def group_params
    params.require(:group).permit(:name, :location, :pictures, user_attributes:[:name, :avatar])
  end
end

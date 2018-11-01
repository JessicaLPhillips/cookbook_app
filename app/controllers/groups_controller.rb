class GroupsController < ApplicationController
  before_action :authenticate_user!

  def new

  end

  def create
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
    @group = Group.find(params[:id])
  end
end

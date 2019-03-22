class TuteesController < ApplicationController

  def tutee_params
    params.require(:tutee).permit(:first_name, :last_name, :sid, :priviledge, :email)
  end

  def index

  end

  def show
    @tutee = Tutee.find_by_id(params[:id])
    @courses = [Course.find_by_semester(Course.current_semester)]


  end

  def new
    # default: render 'new' template if they have not logged in before
  end

  def edit
    @tutee = Tutee.find params[:id]
  end

  def create
    @tutee = Tutee.create!(tutee_params)
    flash[:notice] = "Account for #{@tutee.first_name} was successfully created."
    if @tutee.valid?
      redirect_to tutee_path(@tutee)
    else
      redirect_to tutees_path
    end
  end

  def update
    @tutee = Tutee.find params[:id]
    if @tutee.update!(tutee_params)
      flash[:notice] = "information was successfully updated."
      redirect_to tutee_path(@tutee)
    else
      redirect_to edit_tutee_path(@tutee)
    end
  end

  def destroy
  end

end

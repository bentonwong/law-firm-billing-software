class LawyersController < ApplicationController
  before_action :set_lawyer, only: [:show, :edit, :update]

  def index
    @lawyers = Lawyer.all
  end

  def new
    @lawyer = Lawyer.new
  end

  def create
    lawyer = Lawyer.new(lawyer_params)
    if lawyer.save
      redirect_to lawyer_path(lawyer)
    else
      redirect_to new_lawyer_path
    end
  end

  def edit
  end

  def update
    @lawyer.update(lawyer_params)
    redirect_to @lawyer
  end

  def show
  end

  def destroy
  end

  private

    def lawyer_params
      params.require(:lawyer).permit(:name, :email, :rate)
    end

    def set_lawyer
      @lawyer = Lawyer.find_by(id: params[:id])
    end

end

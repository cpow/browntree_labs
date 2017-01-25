class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(params.require(:lead).permit(:name, :email, :notes))
    if @lead.save
      flash[:success] = "Thank you. I'll get back to you shortly."
      redirect_to index_path
    else
      flash.now[:error] = "Please fill out the higlighted areas correctly."
      render :new
    end
  end
end

class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def create
    @lead = Lead.new(params.require(:lead).permit(:name, :email, :notes))
    if @lead.save
      redirect_to [@lead], notice: "Success"
    else
      #we'll handle this some other time
    end
  end
end

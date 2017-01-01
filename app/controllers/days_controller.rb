class DaysController < ApplicationController
    def index
     
      @days = Day.all
      
    end

  def new
    @day = Day.new
    @usermail = current_user.email
  end
  def create
@day = Day.new(day_params)
   if @day.save
    redirect_to days_path
   else
     render :new
   end
  end

 
  

  
  private

  def day_params
    params.require(:day).permit(:title, :progress, :link, :hub, :thought )
  end
  
    
    
end

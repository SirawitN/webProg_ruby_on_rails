class Ex2Controller < ApplicationController
  
  def loop

    @param1 = params[:a]
    @param2 = params[:b]

    is_A_Empty = !params[:a] || @param1.strip.empty?
    is_B_Empty = !params[:b] || @param2.strip.empty?

    if  is_A_Empty && is_B_Empty
      flash.now[:alert] = "Please specify values of a and b!!"
    elsif is_A_Empty
      flash.now[:alert] = "Please specify values of a!"
    elsif is_B_Empty
      flash.now[:alert] = "Please specify values of b!"
      
    else

      begin
    
        @xxx = Integer(@param1)
        @yyy = Integer(@param2)
      
      rescue
        flash.now[:alert] = 
          "There's an error!!!, please specify your parameters in Integer."

      end

    end

  end

end

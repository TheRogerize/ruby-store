class UsersController < ApplicationController
  def profile
    @profile = Profile.find_by(user_id: current_user.id)
    if @profile
      @profile = "ENCONTRADO"
    else 
      @profile = " eteve"
    end
    @full_name = "#{ current_user.first_name } #{ current_user.last_name }"
  end
  
  def fullname
  end

  def show
    @full_name = "#{ current_user.first_name } #{ current_user.last_name }"
    @profileCompleted = true
    def after_sign_in_path_for(user)
      if user.sign_in_count == 1
        @profileCompleted = false
      end
    end
  end
end

class UsersController < ApplicationController
  def profile
    @full_name = "fsafsafsa #{ current_user.first_name } #{ current_user.last_name }"
    puts "AQUI VE"
  end
  
  def fullname
  end

  def show
    @full_name = "fsafsafsa #{ current_user.first_name } #{ current_user.last_name }"
    @profileCompleted = true
    def after_sign_in_path_for(user)
      if user.sign_in_count == 1
        @profileCompleted = false
      end
    end
  end
end

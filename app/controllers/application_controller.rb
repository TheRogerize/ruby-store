class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end
    # def after_sign_up_path_for(user)
      # '/users/show' # replace with the path you want
    # end
    def after_sign_in_path_for(user)
      if current_user.sign_in_count == 1
        user_path(current_user.id)#see note below
        else
          home_home_path
      end
    end
  end

# class ApplicationController < ActionController::Base
#     attr_accessor :first_name, :surname
#     protect_from_forgery with: :exception

#     before_action :configure_permitted_parameters, if: :devise_controller?

#     protected

#     def configure_permitted_parameters
#         devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
        

#     end

# end



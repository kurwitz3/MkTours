module ApplicationHelper

    def current_user
        User.find_by(session[:user_id])
        end

       
    def logged_in?
        !current_user.nil?
    end
    
    def logged_in_user
       unless logged_in?
          flash[:notice] = "Please log in to make a review."
          redirect_to new_user_session_path
       end
    end
     
      
end

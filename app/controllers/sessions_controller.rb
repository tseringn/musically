class SessionsController<ApplicationController
   skip_before_action :authorized, except: [:logout]
    
   def welcome
      render :layout => 'welcome_layout'
   end
   
   def new
      render :layout => "welcome_layout"
    end

    def create
        @user = User.find_by(username: params[:session][:username])
      if @user && @user.authenticate(params[:session][:password])
           session[:user_id] = @user.id
           redirect_to user_path(@user.id)
        else
            flash[:errors]= "Username or Password Is Incorrect"
           redirect_to new_login_path
        end
      end

      def logout
         session.delete(:user_id)
         redirect_to '/'
      end
end

class SessionsController<ApplicationController
    
    def new
    
    end

    def login
    end



    def create
        @user = User.find_by(username: params[:username])
      if @user
        if @user.password == params[:password]
            
           session[:user_id] = @user.id
           
           redirect_to user_path(@user.id)
        else
            flash[errors]=["Wrong password"]
           redirect_to '/login'
        end
      else flash[errors]=["#{params[:username]} is not a user name!"]
         redirect_to '/login'
      end
     end

     

end

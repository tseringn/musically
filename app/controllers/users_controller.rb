class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :show, :update]
    skip_before_action :authorized, only: [:new, :create]

    def welcome
        @user=User.new
        render 'welcome'
    end
    
    def new
        @user=User.new
    end

    def create
        @user=User.create(user_params)
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
     end

     def show
     @user=User.find(params[:id])
     end

     def edit
     
     end

     def update
     @user.update(user_params)
     redirect_to user_path(@user.id)
     end




    # def login
    #     @user=User.where("username = '#{login_params(:username)}'")
    #     if  @user ==User.where("password = '#{login_params(:password)}'")
    #         byebug
    #         redirect_to user_path(@user.id)
    #     else
    #         @user='No no password and user name matched, please try again'
    #         redirect_to  "login"
    #     end

    # end

    
    


    private

# def login_params(*args)
#     params.permit(*args)
# end
    def user_params
       params.require(:user).permit(:name, :username, :password, :profile_pic)
    end

    
    def upload
      uploaded_file = params[:img_url]
      File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
        file.write(uploaded_file.read)
      end
    end

    def set_user
        @user=User.find(params[:id])
    end


end

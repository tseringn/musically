class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :show]
    skip_before_action :authorized, only: [:new, :create, :welcome]

    def welcome
        @user=User.new
        render 'welcome'
    end
    
    def new
        @user=User.new
        render :layout => "welcome_layout"
    end

    def create
        @user=User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path(@user.id)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
     end

     def show
        if @user.id !=@current_user.id
            redirect_to user_path(@current_user.id)
        end
     end

     def edit
     
     end

     def update
     @user.update(user_params)
     redirect_to user_path(@user.id)
     end

    private

    def user_params
       params.require(:user).permit(:name, :username, :password, :profile_pic, :url)
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

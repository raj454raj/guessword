class UserController < ApplicationController
	def welcome
	
	end

	def index
	end
	def login

	end
	def signin
		#print "hello"
		
	end
	
	def new
		@user = Users.new
	end
	
	def create
		@user = Users.new(user_params)
        if @user.save
        	redirect_to :controller => 'user', :action => 'welcome', :notice => 'signed in'
		else
			render 'welcome'
		end

	end
	
	#def show
	#	@tmp=params[:id]
	#	if @tmp == 'signin'
	#		redirect_to :controller => 'user', :action => 'signin'
	#	end
        #@user = User.find(params[:id])
	#end
	private
        def user_params
    		params.require(:user).permit(:username, :password, :name, :email)
        end

end


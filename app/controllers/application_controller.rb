class ApplicationController < ActionController::API

    #temporary hard code current user for front end; this will change when JWT AUTH is added
    def current_user
        User.first
    end

    def logged_in?
        !!current_user
    end
end

class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def authorize_admin!
        unless current_user.admin?
            flash[:notice] = "You are not authorized to view this page"
            redirect_to new_user_session_path
        end
    end
end

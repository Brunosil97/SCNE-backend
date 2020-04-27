class AdminsController < ApplicationController

    def sign_in
        admin = Admin.find_by(username: params[:username])
        if admin && admin.authenticate(params[:password])
          render json: {username: admin.username, token: generate_token({id: admin.id}) }
        else
          render json: { error: "Password is invalid "}
        end
      end
    
      def validate
        if get_admin
          render json: {username: get_admin.username, token: generate_token({id: get_admin.id})}
        else
          render json: { error: "You are not authorized" }
        end
      end
end

class ApplicationController < ActionController::API

      def secret
        Rails.application.credentials.secret_key
      end
    
      def generate_token(data)
        JWT.encode(data, secret)
      end
    
    
      def decode_token
        token = request.headers["Authorization"]
        begin
          JWT.decode(token, secret).first
        rescue
          {}
        end
      end
    
      def get_admin
        id = decode_token["id"]
        Admin.find_by(id: id)
      end
end

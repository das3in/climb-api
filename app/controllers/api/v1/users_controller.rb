module Api
  module V1
    class UsersController < ApplicationController
      include ActionController::MimeResponds
      before_action :authenticate_user

      def index
        @user = current_user
      end
    end
  end
end

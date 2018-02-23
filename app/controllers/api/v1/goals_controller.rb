module Api
  module V1
    class GoalsController < ApplicationController
      include ActionController::MimeResponds
      before_action :authenticate_user

      def index
        @goals = current_user.goals.preload(:category).order(created_at: :desc)
      end

      def create
        category = Category.find_by(name: params[:category][:name])
        @goal = current_user.goals.build(
          goal_params.merge(category_id: category.id)
        )
        @goal.save
      end

      private

      def goal_params
        params.require(:goal).permit(
          :item,
          :interval,
          :value,
          :goal,
        )
      end
    end
  end
end

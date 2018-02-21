module Api
  module V1
    class GoalsController < ActionController::API
      include ActionController::MimeResponds
      attr_accessor :category_name

      def index
        @goals = Goal.all.preload(:category).order(created_at: :desc)
      end

      def create
        category = Category.find_by(name: params[:category][:name])
        @goal = Goal.new(goal_params.merge(category_id: category.id))
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

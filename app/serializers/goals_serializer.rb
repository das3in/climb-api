class GoalsSerializer
  include FastJsonapi::ObjectSerializer

  set_type :goal
  attributes :item, :interval, :value, :goal
  belongs_to :category
end

json.goals @goals do |goal|
  json.id goal.id
  json.item goal.item
  json.interval goal.interval
  json.value goal.value
  json.goal goal.goal
  json.category goal.category.name
  json.created_at goal.created_at
end

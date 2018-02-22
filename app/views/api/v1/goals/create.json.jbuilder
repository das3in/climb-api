json.goal do
  json.id @goal.id
  json.item @goal.item
  json.value @goal.value
  json.goal @goal.goal
  json.interval @goal.interval
  json.category @goal.category.name
  json.created_at @goal.created_at
end

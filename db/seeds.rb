minions = Category.find_or_create_by(name: "Minions")
kda = Category.find_or_create_by(name: "KDA")
gold = Category.find_or_create_by(name: "Gold")
objectives = Category.find_or_create_by(name: "Objectives")
vision = Category.find_or_create_by(name: "Vision")
games = Category.find_or_create_by(name: "Games")
teamwork = Category.find_or_create_by(name: "Teamwork")
custom = Category.find_or_create_by(name: "Custom")

Goal.create!(
  category: minions,
  item: "CS",
  interval: "minute",
  goal: 9,
  value: 6.5,
)
Goal.create!(
  category: kda,
  item: "kills",
  interval: "game",
  goal: 8,
  value: 4,
)
Goal.create!(
  category: vision,
  item: "wards killed",
  interval: "game",
  goal: 5,
  value: 2,
)
Goal.create!(
  category: games,
  item: "games played",
  interval: "day",
  goal: 5,
  value: 1,
)

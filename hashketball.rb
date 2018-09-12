#require 'pry'

 def game_hash
   {
     :home => {
       :team_name => "Brooklyn Nets",
       :colors => ["Black", "White"],
       :players => {
         "Alan Anderson" => {
           :number => 0,
           :shoe => 16,
           :points => 22,
           :rebounds => 12,
           :assists => 12,
           :steals => 3,
           :blocks => 1,
           :slam_dunks => 1 },
         "Reggie Evans" => {
           :number => 30,
           :shoe => 14,
           :points => 12,
           :rebounds => 12,
           :assists => 12,
           :steals => 12,
           :blocks => 12,
           :slam_dunks => 7 },
         "Brook Lopez" => {
           :number => 11,
           :shoe => 17,
           :points => 17,
           :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15 },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5 },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1 }
          }
        },
    :away => {
       :team_name => "Charlotte Hornets",
       :colors => ["Turquoise", "Purple"],
       :players => {
         "Jeff Adrien" => {
           :number => 4,
           :shoe => 18,
           :points => 10,
           :rebounds => 1,
           :assists => 1,
           :steals => 2,
           :blocks => 7,
           :slam_dunks => 2 },
         "Bismak Biyombo" => {
           :number => 0,
           :shoe => 16,
           :points => 12,
           :rebounds => 4,
           :assists => 7,
           :steals => 7,
           :blocks => 15,
           :slam_dunks => 10 },
         "DeSagna Diop" => {
           :number => 2,
           :shoe => 14,
           :points => 24,
           :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5 },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0 },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12 }
        }
      }
  }
 end
 
 def num_points_scored(player_name)
   game_hash.each do |location, team_data|
     team_data[:players].each do |player, attribute|
       if player == player_name
           return attribute[:points]
       end
    end
  end
end
 
 def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, attribute|
      if player == player_name
          return attribute[:shoe]
      end
    end
  end
end
 
 def team_colors(team_names)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_names
      return team_data[:colors]
    end
  end
end
 
 def team_names
  teams = []
  game_hash.each do |location, team_data|
    teams << team_data[:team_name]
  end
  teams
end
 
 def player_numbers(team_names)
  player_num = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_names
      team_data[:players].each do |name, data|
        player_num << team_data[:players][name][:number]
      end
    end
  end
  player_num
  
end

 def player_stats(player_names)
  game_hash.each do |location, team_data|
    team_data[:players].each do |name, data|
      if name == player_names
        return data
      end
    end
  end
end

 def big_shoe_rebounds
  shoe_size = []
  game_hash.each do |location, team_data|
    team_data[:players].each do |name, data|
      shoe_size << data[:shoe]
      if team_data[:players][name][:shoe] == shoe_size.max
        return team_data[:players][name][:rebounds]
      end
    end
  end
end

# def most_points_scored
#   most_points = []
#   game_hash.each do |location, team_data|
#     team_data[:points].each do |name, data|
#       most_points << data[:points]
#       if team_data[:players][name][:points] == most_points.max
#         return team_data[:players][name][:points]
#       end
#     end
#   end
# end
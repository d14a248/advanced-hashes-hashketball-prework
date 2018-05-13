require 'pry'



def game_hash
  
  {
    home: {
      team_name: 'Brooklyn Nets',
      colors:['Black', 'White'],
      players: {
        'Alan Anderson': {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        'Reggie Evans': {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        'Brook Lopez': {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        'Mason Plumlee': {
          number: 1,
          shoe: 19, 
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        'Jason Terry': {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    
    away: {
      team_name:'Charlotte Hornets',
      colors:['Turquoise', 'Purple'],
      players: {
        'Jeff Adrien': {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        'Bismak Biyombo': {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        'DeSagna Diop': {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        'Ben Gordon': {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        'Brendan Haywood': {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
  
end




def num_points_scored(name)
  game_hash.each do |location,team_data|
    team_data[:players].each do |player,player_data|
      if player.to_s == name
        return player_data[:points]
      end
    end
  end
end
  

def shoe_size(name)
  game_hash.each do |location,team_data|
    team_data[:players].each do |player,player_data|
      if player.to_s == name
        return player_data[:shoe]
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |location,team_data|
    if team_data[:team_name].to_s == team
      return team_data[:colors]
    end
  end
end

def team_names
  game_hash.collect do |location,team_data|
    team_data[:team_name]
  end
end

def player_numbers(team)
  game_hash.each do |location,team_data|
    if team_data[:team_name].to_s == team 
      number_array = team_data[:players].collect do |player,player_data|
        player_data[:number]
      end
      return number_array
    end
  end
end

def player_stats(name)
  game_hash.each do |location,team_data|
    team_data[:players].each do |player,player_data|
      if player.to_s == name
        return player_data
      end
    end
  end
end


#def big_shoe_rebounds #solving with hash 
#  shoe_rebounds = []
#  game_hash.each do |location,team_data|
#    team_data[:players].each do |player,player_data|
        
#        hash = {
#          'shoe_size': player_data[:shoe],
#          'rebounds': player_data[:rebounds]
#        }
         
#        shoe_rebounds << hash
        
#    end #team_data
   
# end #game_hash

   
#   max_val = 0
#   num_rebounds = 0
   
#   shoe_rebounds.each do |hash|
   
#     if max_val == 0 || hash[:shoe_size] > max_val
#        max_val = hash[:shoe_size]
#        num_rebounds = hash[:rebounds]
#     end
     
#   end
#    num_rebounds
#end #def



def big_shoe_rebounds #solving with array
  shoe_array = []
  game_hash.each do |location,team_data|
    team_data[:players].each do |player,player_data|
      shoe_array.push(player_data[:shoe])
    end
    shoe_array
  end
  max_shoe = shoe_array.max 
  game_hash.each do  |location,team_data|
    team_data[:players].each do |player,plater_data|
      if max_shoe == player_data[:shoe]
        num_rebounds = player_data[:rebounds]
      end
    end
  end
  num_rebounds
end


local Game = {}

Game.Map = {}
Game.Map = {
              {2,2,2,2,2,2,2,2,2,2}, 
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
              {2,2,2,2,2,2,2,2,2,2},
            }

Game.TileTextures = {}
function Game.Load()
  print("Game chargement des textures")
  Game.TileTextures[0]=nil
  Game.TileTextures[2]=love.graphics.newImage("images/grassCenter.png")
end

function Game.draw()

  local c,l
  for l=1,10 do
    for c=1,10 do
      local id =Game.Map[l][c]
      local tex = Game.TileTextures[id]
      love.graphics.draw(tex,(c-1)*70,(l-1)*70)
    end 
  end  

end  

return Game
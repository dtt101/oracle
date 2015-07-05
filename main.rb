$LOAD_PATH.unshift "."

require "curses"
require "yaml"

require "data_loader"
require "ui"
require "messages"
require "role"
require "race"
require "gender"
require "alignment"
require "attribute_generator"
require "player"
require "selection_screen"
require "game"

Game.new.run

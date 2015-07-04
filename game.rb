require "title_screen"

class Game

  TRAITS = [Role, Race, Gender]

  def initialize
    @ui = UI.new
    @options = { quit: false, randall: false }
    at_exit { ui.close; p options }
  end

  def run
    title_screen
    setup_character
  end

  private

  attr_reader :ui, :options

  def title_screen
    TitleScreen.new(ui, options).render
    quit?
  end

  def quit?
    exit if options[:quit]
  end

  def setup_character
    get_traits
  end

  def get_traits
    TRAITS.each do |trait|
      SelectionScreen.new(trait, ui, options).render
      quit?
    end
  end
end

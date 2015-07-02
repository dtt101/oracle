class Game
  def initialize
    @ui = UI.new
    at_exit { ui.close }
  end

  def run
    title_screen
  end

  private

  attr_reader :ui

  def title_screen
    ui.message(0, 0, "Oracle")
    ui.message(7, 1, "Wise Owl Games")
    ui.choice_prompt(0, 3, "Shall I pick a character's race, role, gender and" +
      " alignment for you? [ynq]", ["ynq"])

  end
end

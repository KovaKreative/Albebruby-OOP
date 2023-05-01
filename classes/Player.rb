class Player

  MAX_LIVES = 3

  @@number_of_players = 0

  def self.number_of_players
    @@number_of_players
  end

  def initialize(name)
    @@number_of_players += 1

    @lives = MAX_LIVES
    @name = set_name(name)
  end

  attr_reader :name
  attr_reader :lives

  # Removes one life, more secure than just having a setter
  def remove_life
    @lives -= 1
  end

  def to_s
    "Welcome to the game, #{name}!"
  end

  private

  # If the player doesn't enter a name, one is automatically assigned
  def set_name(name)
    if name == ""
      return "Player #{@@number_of_players}"
    end
    name
  end


end


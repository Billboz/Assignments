class Team
  @@team_count = 0

  attr_accessor :name
  attr_reader :city
  attr_writer :state

  def initialize
    @@team_count += 1
  end

  def self.number_of_teams
    @@team_count
  end

  def cheer_for_team
    puts "Go #{@name}!"

    puts "Go #{self.name}!"

    set_the_city
    return nil
  end

  private

  def set_the_city
    if @state == 'Florida'
      @city = "St. Pete"
    else
      @city = "No clue"
    end
  end
end

class Spell
  attr_accessor :name, :index, :description, :range, :components, :duration


@@all = []

  def initialize(name:, index:)
    @name = name
    @index = index
    @description = description
    @range = range
    @components = components
    @duration = duration
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_(input)
    by_letter = self.all.select{|spells| spells.start_with?("input")}
    by_letter
  end


  ## responsible for creating spell obj's
  ##
end
class Zombie
  attr_reader :name, :brains

  def initialize
  @name = 'Ash'
  @brains = 0
  @hungry = true
  end

  def hungry?
    true
  end

  def dead?
    true
  end

  def craving_brains?
    true
  end
end

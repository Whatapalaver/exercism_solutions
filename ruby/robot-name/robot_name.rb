class Robot

  @@name_registry = []

  class << self
    def forget
      @@name_registry = ('AA000'..'ZZ999').to_a.shuffle
    end
  end

  attr_accessor :name

  def name
    @name ||= random_name
  end

  def reset
    @name = nil
  end

  private

  def random_name
    @@name_registry.pop
  end

end

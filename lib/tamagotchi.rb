class Tamagotchi

  define_method(:initialize) do |name|
    @name = name
    @nourishment = 50
    @happiness   = 50
    @restfulness = 50
  end
  define_method(:name) do
    @name
  end

  define_method(:nourishment) do
    @nourishment
  end

  define_method(:restfulness) do
    @restfulness
  end

  define_method(:happiness) do
    @happiness
  end

  define_method(:its_alive?) do
    if @nourishment.eql?(0) || @happiness.eql?(0) || @restfulness.eql?(0)
      false
    else
      true
    end
  end
end

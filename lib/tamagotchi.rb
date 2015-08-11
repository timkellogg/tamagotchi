class Tamagotchi

  # Globals
  $time

  define_method(:initialize) do |name|
    @name = name
    @nourishment = 50
    @happiness   = 50
    @restfulness = 50
    @time  = Time.now.sec
    run_time
  end

  define_method(:run_time) do
    if @start_time % 10 == 0
      @nourishment -= 1
    elsif @start_time % 6 == 0
      @restfulness -= 1
    elsif @start_time % 5 == 0
      @happiness -= 1
    end

    @time = Time.now.sec
    its_alive?
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
      run_time
    end
  end
end

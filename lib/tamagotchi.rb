class Tamagotchi

  define_method(:initialize) do |name|
    @name = name
    @nourishment  = 1000
    @happiness    = 1000
    @restfulness  = 1000
    @start_time   = Time.now.to_i()
    @current_time = @start_time
    @time_passed  = @current_time - @start_time
  end

  define_method(:current_time) do
    @current_time = Time.now.to_i()
  end

  define_method(:run_time) do
    if @time_passed/10 == 0
      @nourishment -= @time_passed
    elsif @time % 6 == 0
      @restfulness -= @time_passed
    elsif @time % 5 == 0
      @happiness -= @time_passed
    end

    current_time
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

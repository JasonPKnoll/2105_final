class Train
  attr_reader :name, :type, :cargo

  def  initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @cargo = {}
  end

  def add_cars(car, num)
    if @cargo[car] == nil
      @cargo[car] = num
    else
      @cargo[car] = (@cargo[car] + num)
    end
  end

  def count_cars(car)
    if @cargo[car] == nil
      0
    else
      @cargo[car]
    end
  end

end

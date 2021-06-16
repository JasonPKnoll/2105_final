class TrainYard
  attr_reader :location, :trains

  def initialize(attributes)
    @location = attributes[:location]
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def weight
    train_weight = 0
    @trains.each do |train|
      train.cargo.each do |cargo|
        train_weight += cargo[0].weight
      end
    end
    train_weight
  end

  def types_of_trains
    @trains.map do |train|
      train.type
    end.uniq
  end

  def trains_containing(car)
    @trains.select do |train|
      train.cargo.any? do |cargo|
        cargo.include?(car)
      end
    end
  end

  def sorted_cargo_list
    @trains.flat_map do |train|
      train.cargo.flat_map do |car|
        car[0].type
      end
    end.uniq.sort
  end

  def total_inventory
    totals = Hash.new(0)
    @trains.flat_map do |train|
      train.cargo
    end.inject do |car, weight|
      totals[car] = weight
    end
  end

end

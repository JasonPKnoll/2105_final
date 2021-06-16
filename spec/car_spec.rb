require './lib/car'

describe Car do
  before(:each) do
    @car1 = Car.new({type: 'Mail', weight: 5})
    @car2 = Car.new({type: 'Passengers', weight: 1})
  end

  it 'exists' do
    expect(@car1).to be_a(Car)
  end

  it 'has attributes' do
    expect(@car1.type).to be('Mail')
    expect(@car1.weight).to be(5)
  end

end

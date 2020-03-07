RSpec.describe Car::MyCar do
  let(:volvo) { Car::MyCar.new(1984, 'blue', 'volvo') }
  let(:failure) { 'water pump failure, dead battery' }

  it 'creates instance of MyCar class' do
    expect(volvo).to be_instance_of(Car::MyCar)
  end

  it 'has initial car speed set to 0' do
    expect(volvo.current_speed).to eq(0)
  end

  it 'speeds up the car by 10km/h by default' do
    volvo.speed_up
    expect(volvo.current_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it 'speeds up the car by input value' do
    volvo.speed_up(40)
    expect(volvo.current_speed).to eq(40)
  end

  it 'slows down the car by 10km/h by default' do
    volvo.slow_down
    expect(volvo.current_speed).to eq(- Car::MyCar::SPEED_OFFSET)
  end

  it 'slows down the car by input value' do
    volvo.slow_down(40)
    expect(volvo.current_speed).to eq(-40)
  end

  it "changes the color of the object" do
    volvo.spray_paint(:silver)
    expect(volvo.color).to eq(:silver)
  end

  it 'has no defects' do
    expect(volvo.defects).to be_empty
  end

  it 'adds a defect to list' do
    volvo.add_defect(failure)
    expect(volvo.defects).to include(failure)
  end

  it 'lists all the defects' do
    volvo.add_defect(failure)
    volvo.add_defect('oil change')
    expect(volvo.service_info).to eq("Defects to be fixed: #{failure}, oil change")
  end
end

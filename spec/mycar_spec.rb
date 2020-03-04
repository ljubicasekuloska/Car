
RSpec.describe Car::MyCar do
  it 'Creates instance of MyCar class' do
    volvo = Car::MyCar.new(1984, 'blue', 'volvo')
    expect(volvo).to be_instance_of(Car::MyCar)
  end

  it 'Has initial car speed set to 0' do
    volvo = Car::MyCar.new(1984, 'blue', 'volvo')
    expect(volvo.current_speed).to eq(0)
  end
  # test verzija 1
  it "Speeds up the car by 10km/h" do
      volvo = Car::MyCar.new(1984, 'blue', 'volvo')
      expect {volvo.speed_up}.to change {volvo.current_speed}.by(10)
  end

#   test verzija 2
#   it 'speeds up the car' do
#     volvo = Car::MyCar.new(1984, 'blue', 'volvo')
#     expect { volvo.speed_up(40) }.to change { volvo.current_speed }.by(40)
#   end
end

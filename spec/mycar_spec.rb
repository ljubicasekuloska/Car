RSpec.describe Car::MyCar do
    it "Creates instance of MyCar class" do
        volvo = Car::MyCar.new(1984, 'blue', 'volvo')
        expect(volvo).to be_instance_of (Car::MyCar)
    end

    it "has initial car speed set to 0" do
        volvo = Car::MyCar.new(1984, 'blue', 'volvo')
        expect(volvo.current_speed).to eq(0) 
    end
    
end
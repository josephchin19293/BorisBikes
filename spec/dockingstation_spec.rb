require "docking_station"

describe DockingStation do
  
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

=begin
  it 'gets a bike' do
    x = subject.release_bike
    expect(x).to be_working
  end
=end

  it 'responds to dock with an argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "responds to the method 'bike'" do
    is_expected.to respond_to(:bikes)
  end

  it 'docks a bike' do
    x = double(:bike)
    expect(subject.dock(x)).to eq [x]
  end

  describe '#release_bike' do
    let(:dockingstation) {DockingStation.new}

    it 'raises an error when no bikes to take' do
      expect {subject.release_bike}.to raise_error "No bikes available!"
    end

    it 'will not release a broken bike' do
      bike = instance_double("Bike", :working? => false)
      dockingstation.dock(bike)
      expect{dockingstation.release_bike}.to raise_error "The bike at this dock is broken!"
    end
  end


  describe '#dock'do
    let(:dockingstation) {DockingStation.new} 

    it 'raises an error when the docking station is full' do

      dockingstation.dock(double(:bike))
      expect {dockingstation.capacity.times{dockingstation.dock double(:bike)}}.to raise_error "The dock is full!"
    end
  end

  describe '#initialize' do
    let(:dockingstation) {DockingStation.new} 
    
    it 'expects a docking station to have a default capacity when initialized' do
      expect(dockingstation.capacity).to eq 20
    end
  end
end

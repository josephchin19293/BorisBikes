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
    is_expected.to respond_to(:bike)
  end

  it 'docks a bike' do
    x = Bike.new
    expect(subject.dock(x)).to eq x
  end

  describe '#release_bike' do
    it 'raises an error when no bikes' do
      expect {subject.release_bike}.to raise_error "No bikes available!"
    end
  end

  describe '#dock'do
    it 'raises an error when there is a bike already docked' do
      subject.dock(Bike.new)
      expect 20.times{subject.dock Bike.new}.to raise_error "The dock is full!"
    end
  end
end

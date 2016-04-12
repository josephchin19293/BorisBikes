require "docking_station"

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'gets a bike' do
    x = subject.release_bike
    expect(x).to be_working
  end
end

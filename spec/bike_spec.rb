require "docking_station"

describe Bike do
  it 'Bike responds to .working?' do
    expect(subject).to respond_to :working?
  end

  it 'can be reported as broken' do
  	subject.report_broken
  	expect(subject.working?).not_to eql(true)
  end
end

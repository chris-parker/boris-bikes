require 'van'

describe Van do
  it 'should respond to the from_dock method' do
    expect(subject).to respond_to(:from_dock).with(1).argument

  end

  it 'should load broken bikes from the dock' do
    station = DockingStation.new
    bike = Bike.new.report_broken
    station.dock(bike)
    broken_bikes = station.bike_to_van
    p broken_bikes
    expect(subject.from_dock(broken_bikes)).to be_a(Array)
  end


  it 'should bring bikes to the garage' do
    expect(subject).to respond_to(:to_garage).with(1).argument
  end

end




































=begin

require 'van'

describe Van do
  it 'should move broken bikes to the garage' do
    station = DockingStation.new
    sucky_bikes = station.bike_to_van
    expect(subject.take_from_dock sucky_bikes).to all be_not_working
  end


  it "should move fixed bikes to the docking station" do
    station = DockingStation.new
    sucky_bikes = station.bike_to_van
    sucky_bike = subject.take_from_dock sucky_bikes
    garage = Garage.new
    ok_bike = garage.to_return(sucky_bike)
    expect(subject.take_to_dock ok_bike).to all be_working
  end
end
=end

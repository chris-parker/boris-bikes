
require 'van'

describe Van do

  let(:bike) { double :bike}
  
  it 'should move broken bikes to the garage' do
    sucky_bikes = [bike]
    subject.take_from_dock(sucky_bikes)
    expect(subject.broken_bikes).not_to be_empty
  end


  it "should move fixed bikes to the docking station" do
    ok_bikes = [bike]
    subject.take_to_dock(ok_bikes)
    expect(subject.fixed_bikes).not_to be_empty
  end
end

require 'garage'

describe Garage do

	let(:bike) {double :bike}


  it 'should fix broken bikes' do
  	allow(bike).to receive_messages(report_broken: false, fix: true, working?: true)
  	sucky_bikes = [bike]
  	sucky_bikes[0].report_broken
  	subject.fixed(sucky_bikes)
  	expect(sucky_bikes).to all be_working
  end
end

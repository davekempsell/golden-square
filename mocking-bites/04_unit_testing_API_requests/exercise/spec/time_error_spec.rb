require 'time_error'

RSpec.describe TimeError do
  it "Returns difference between server time and computer time" do
    requester = double :requester
    expect(requester).to receive(:get)
      .with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST","client_ip":"2a00:23c5:e708:f201:d599:7708:f891:6a68","datetime":"2022-05-25T14:02:44.349526+01:00","day_of_week":3,"day_of_year":145,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1653483764,"utc_datetime":"2022-05-25T13:02:44.349526+00:00","utc_offset":"+01:00","week_number":21}')
    
    fake_time = Time.new(2022, 5, 25, 14, 00, 00)

    time_error = TimeError.new(requester)
    result = time_error.error(fake_time)
    expect(result).to eq 164.349526
  end
end

# Net::HTTP

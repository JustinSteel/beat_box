require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  describe 'Instance' do
    it 'Checks if bb is instance of BeatBox' do
    bb = BeatBox.new

    expect(bb).to be_instance_of BeatBox
  end
end
  describe 'Instance' do
    it 'Checks if bb is instance of BeatBox' do
    bb = BeatBox.new
    

    expect(bb).to be_instance_of BeatBox
    expect(bb.list).to be_instance_of LinkedList
  end
end
  describe 'If head exists' do
    it 'Checks if there is a head' do
    bb = BeatBox.new
    
    expect(bb.list.head).to eq(nil)
  end
end
  describe 'Append' do
    it 'Checks if there is a head' do
    bb = BeatBox.new
    
    expect(bb.list.head).to eq(nil)
  end
end
  
end
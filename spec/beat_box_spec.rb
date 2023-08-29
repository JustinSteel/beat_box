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
    it 'split string into nodes' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    

    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
    bb.append("woo hoo shu")

    expect(bb.count).to eq(6)
  end
end
  describe 'Count' do
    it 'count list' do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")

    expect(bb.count).to eq(6)
  end
end
  describe 'Play' do
    it 'Play that funky music' do
    bb = BeatBox.new
    bb.append("deep doo ditt deep doo doo")
    bb.append("deep doo ditt deep doo doop")
    bb.append("deep doo ditt deep doo ditt")
    bb.append("deep doo ditt deep doo ditt")
    bb.append("deep doo")

    expect(bb.respond_to?(:play)).to be true
    bb.play
  end
end
  
end
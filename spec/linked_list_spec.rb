require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe "Instance" do
    it 'link is instance of LinkList' do
      list = LinkedList.new

      expect(list).to be_instance_of LinkedList
    end
  end

  describe 'head starts nil' do
    it 'head is nil with empty list' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end
  end

  describe 'append' do
    it 'adds a new piece of data to the list' do
      list = LinkedList.new
      list.append("doop")
      # require 'pry'; binding.pry
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      expect(list.head).to be_instance_of(Node)
    end
  end

end
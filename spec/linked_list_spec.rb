require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe "Instance" do
    it 'link is instance of LinkList' do
      list = LinkedList.new

      expect(link).to be_instance_of(LinkList)
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

      expect(list.head.data).to eq("doop")
    end
  end

end
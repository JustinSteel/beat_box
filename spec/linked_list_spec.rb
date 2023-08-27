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
  describe 'count' do
    it 'counts nodes in list' do
      list = LinkedList.new
      list.append("doop")
      
      
      expect(list.count).to eq(1)
    end
  end

  describe 'to string' do
    it 'shows list of node data in a string' do
      list = LinkedList.new
      list.append("doop")
      
      
      expect(list.to_string).to eq("doop")
    end
  end

  describe 'methods work with multiple nodes' do
    it 'checks methods work with multiple' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
      list.append("doop")
      
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      list.append("deep")
      
      expect(list.count).to eq(2)
      expect(list.to_string).to eq("doop deep")
    end
  end

  describe 'multiple nodes' do
    it 'adds multiple nodes' do
    list = LinkedList.new
    list.append("plop")
  
    expect(list.to_string).to eq("plop")
    list.append("suu")

    expect(list.to_string).to eq("plop suu") 
    end
  end
  describe 'prepend' do
    it 'adds node to front of list' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
    end
  end
  describe 'incert' do
    it 'incert node where i want' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.insert(1, "woo")).to eq("dop woo plop suu")
    end
  end
end
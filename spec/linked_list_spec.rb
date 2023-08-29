require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  describe "Instance" do
    it 'link is instance of LinkList' do
      list = LinkedList.new

      expect(list).to be_instance_of LinkedList
    end
  end

  describe 'Head starts nil' do
    it 'head is nil with empty list' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end
  end

  describe 'Append' do
    it 'adds a new piece of data to the list' do
      list = LinkedList.new
      list.append("doop")
      
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      expect(list.head).to be_instance_of(Node)
    end
  end
  describe 'Count' do
    it 'counts nodes in list' do
      list = LinkedList.new
      list.append("doop")
      
      
      
      expect(list.count).to eq(1)
      list.append("sloop")
      expect(list.count).to eq(2)
    end
  end

  describe 'To_String' do
    it 'shows list of node data in a string' do
      list = LinkedList.new
      list.append("doop")
      
      
      expect(list.to_string).to eq("doop")
      list.append("doop")
    end
  end

  describe 'Methods work with multiple nodes' do
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

  describe 'Multiple nodes' do
    it 'adds multiple nodes' do
    list = LinkedList.new
    list.append("plop")
  
    expect(list.to_string).to eq("plop")
    list.append("suu")

    expect(list.to_string).to eq("plop suu") 
    end
  end
  describe 'Prepend' do
    it 'adds node to front of list' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
    end
  end
  describe 'Insert' do
    it 'insert one or more elements at a given position in the list' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
    list.insert(3, "boo")
    expect(list.to_string).to eq("dop woo plop boo suu")
    list.insert(2, "foo")
    expect(list.to_string).to eq("dop woo foo plop boo suu")
    list.insert(20, "bo")
    expect(list.insert(20, "bo")).to eq("You cant put a node in position 20 because there are only 6 nodes in this list")
    end
  end
  describe 'Find' do
    it ' takes two parameters, the first indicates the first position to return 
    and the second parameter specifies how many elements to return' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")

    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(0, 1)).to eq("deep")
    expect(list.find(1, 3)).to eq("woo shi shu")
    end
  end
  describe 'Include' do
    it 'gives back true or false whether the supplied value is in the list' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")

    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)
    end
  end
  describe 'Pop' do
    it 'removes the last element from the list and returns it' do
    list = LinkedList.new
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    list.insert(1, "woo")

    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
    end
  end
end

# git branch - shows current branch and local branches
# git branch -r - remote branches
# git branch -a - all branches
# git checkout -b feature/name-of-branch - create new branch, switch to branch
# git checkout name-of-branch - change branches
# git fetch - gives list of all remote branches (query command)
# git merge - combines remote branch to local branch
# git pull - combines git fetch and git merge
# git push origin feature/even-better-branch - push local changes to specified branch








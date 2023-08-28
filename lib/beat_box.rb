class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end
  def append(data)
    data.split
    
  end
end
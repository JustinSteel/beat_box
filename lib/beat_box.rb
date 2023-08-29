class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end
  def append(data)
    split_data = data.split
    split_data.each do |beat|
      @list.append(beat)
    end
  end
  def count
    list.count
  end
  def play
   beats = list.to_string 
    `say -r 1 -v Cellos #{beats}`
  end
end
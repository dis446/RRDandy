class Permission
attr_accessor :children

  def initialize
    raise "abstract class cannot initialize"
  end

  def constructor
    @children = []
  end

  #adds a permission or a command object
  def add!(child)
    #should add defensive check here: is the child a Permission or a Command?
    self.children.add(child)
  end

  #removes a child
  def remove!(child)
    if self.children.include? child
      self.children.delete(child)
    end
  end



end
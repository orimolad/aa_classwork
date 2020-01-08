require "byebug"

class PolyTreeNode
  attr_reader :value, :parent, 
  
  
  :children

  def initialize(value)
      @value = value
      @parent = nil
      @children = []
  end

  def parent=(node) # node = nil or any node instance
    if node == nil
      @parent.children.delete(self)
      @parent = nil
    elsif self.parent == nil # if our current node doesn't have a parent yet
      @parent = node # parent = node we passed into this method
      @parent.children << self
    elsif self.parent != nil # elsif our current node already has a parent
      @parent.children.delete(self)  
      @parent = node
      @parent.children << self
    end
  end
    
  def add_child(child_node) #node1.add_child(node2) node1 = parent, node2 = child 
    if !@children.include?(child_node)
      child_node.parent = self # node2.parent = node1
    end
  end

  def remove_child(child_node)
    child_node.parent = nil 
  end

  def dfs(target)
    return self if self.value == target
    return nil if self.children.empty?
  
    i = 0
    while i < self.children.length
      store = self.children[i].dfs(target)
      return store unless store.nil? 
      i+=1
    end
    nil
  end

  def bfs(target)
    queue = [self]

    until queue.empty?
      el = queue.shift
      return el if el.value == target
      queue += el.children
    end

    nil
    
  end
end




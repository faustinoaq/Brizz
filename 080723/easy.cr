
# Example: distance between b-d (55) is b-a (20) + a-d (35) + d-d (0)
# a  b  c  d 
#  0 20 42 35 a
# 20  0 30 -1 b
# 42 30  0 12 c
# 35 -1 12  0 d

graph = [ 10.times.map { 10.times.map { rand(-1..10) }.to_a }.to_a ]

graph.each { |g| puts g }

nodes = ("a".."z").to_a + ("aa".."az").to_a

def dfs(graph, start_node, end_node, visited, current_distance)
  visited << start_node

  return current_distance if start_node == end_node

  result = nil

  graph[start_node].each_with_index do |distance, neighbor|
    unless visited.includes?(neighbor)
      distance_to_neighbor = current_distance + distance
      result = dfs(graph, neighbor, end_node, visited, distance_to_neighbor)
      break if result
    end
  end

  result
end

def distance(graph, nodes)
  start_node = nodes.index(nodes[0]).not_nil!
  end_node = nodes.index(nodes[1]).not_nil!

  visited = [] of Int32
  current_distance = 0

  result = dfs(graph, start_node, end_node, visited, current_distance)

  if result
    puts "The total distance between #{nodes[0]} and #{nodes[1]} is #{result}"
  else
    puts "There is no path between #{nodes[0]} and #{nodes[1]}"
  end
end

distance(graph, ["a", "b"])
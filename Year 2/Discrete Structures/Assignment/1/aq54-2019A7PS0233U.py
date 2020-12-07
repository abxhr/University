"""						   *Discrete Structures Assignment*

Name: Abshar Mohammed Aslam
ID No: 2019A7PS0233U

Problem: (Q-54) Write a program which computes the number of regions in a planar
graph, when the connected planar graph is represented using adjacency list.

Remember:
-> Input in the form of adjacency list only
-> Input should be in the format {vertex,adjacent_vertex,... n_adjacent_vertex}
-> The graph must be connected
-> Input seperated by commas
-> The input can contain Numbers or Alphabets
-> I have not considered the situation where the input is entered incorrect.
-> I will be considering that the input graph may or may not be planar to make it more interesting 

EDIT: Although I have mentioned earlier that the input may or may not be planar, I have not been able
      to implement it using Kuratowski's Algorithm, due to the time restriction of this assignment's
      submission.
"""

in_file = open("aq54ip-2019A7PS0233U.txt", 'r')                         # Opening the input file
out_file = open("aq54op-2019A7PS0233U.txt", 'wb')                       # Opening the output file

adj_list = []
for line in in_file:
    values = line.strip('{}\n\r ').split(',')                           # Taking the input from the file as a list of lists
    adj_list.append(values)
print(adj_list)


n_vertices = len(adj_list)                                            # Finding the number of vertices
output_str = " Vertices = " + str(n_vertices) + "\n"


def edges_checker(lst):                                                 # Finding the number of edges
    edges = 0
    for vertex in lst:
        length = len(vertex) - 1
        if(length):
            edges += length
    edges = int(edges/2)                                            # Dividing the total count of elements in adjacency list to get the number of edges
    global output_str
    output_str += " Edges = " + str(edges) + "\n"
    return edges
n_edges = edges_checker(adj_list)


def regions_checker(v, e):                                              # Finding number of regions using Euler's Formula
    r = e + 2 - v
    global output_str
    output_str += " Regions = " + str(r) + "\n"
    return r
n_regions = regions_checker(n_vertices, n_edges)


def planar_checker(v, e):
    global output_str
    output_str += " Planarity = "
    if (3*v - e) >= 6:
        a = True
        output_str += str(a) + "\n"
        return a
    else:
        a = False
        output_str += str(a) + "\n"
        return a
planar = planar_checker(n_vertices, n_edges)


def bordered(text):                                                     # Formatting the output
    lines = text.splitlines()
    width = max(len(s) for s in lines)
    res = ['+' + '─' * width + '+']
    for s in lines:
        res.append('│' + s)
    res.append('+' + '─' * width + '+')
    return '\n'.join(res)
print(bordered(output_str))


a = bordered(output_str)
out_file.write(a.encode('utf8'))                                        # Writing to the output file


in_file.close()                                                         # Closing the input file
out_file.close()                                                        # Closing the output file


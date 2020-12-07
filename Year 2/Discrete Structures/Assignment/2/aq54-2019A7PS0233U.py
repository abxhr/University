"""						   *Discrete Structures Assignment*

Name: Abshar Mohammed Aslam
ID No: 2019A7PS0233U

Problem: (Q-54) Let H = {[0], [2], [4], [6]}. Write a program that computes the right cosets of H in Z8.

Properties of cosets:
-> H.e = e.H = H            {e is an identity element}
-> H.h = H <=> h belongs in H
-> H.a (intersection) H.b = phi    (OR)  H.a = H.b
-> |H.a| = |H| = |aH|
-> H.a not equal to a.H     {if G is ableian}
-> H.a is a subgroup of G <=> a belongs to H
-> G is union of all right cosets of H in G

Remember:
-> The first line in the input file must consist of the number of integers (eg: 8 for this question)
-> The second line in the input file must consist of the set H
-> The set H cannot consist of variables or i
-> The following program will only run if the input and output files are present in the same directory as
   the source code.
-> Open the folder with all the files (source code, input file, output file) in the IDE to run the program.
"""

in_file = open("aq54ip-2019A7PS0233U.txt", 'r')                         # Opening the input file
out_file = open("aq54op-2019A7PS0233U.txt", 'wb')                       # Opening the output file

output_str = "\tRight Cosets:\n\n"

output_str += "Z = ["

Z = []                                                                          # Taking the input of Z
nz = int(in_file.readline())
for i in range(1,nz+1):
    Z.append(i)
    output_str += str(i) + ","

output_str = output_str[:-1] + "]\n"
output_str += "H = ["

H=[]
for i in in_file.readline().strip('{}\n\r').split(',') :
    value = i.strip('[]').split(',')
    for j in value:
        H.append(int(j))
        output_str += str(j) + ","

output_str = output_str[:-1] + "]\n\n"

for i in Z:
    output_str += "H." + str(i) + " = {"
    for j in H:
        temp = j * i
        output_str += str(temp) + ","
    output_str = output_str[:-1] + "}\n"

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
import sys

#required python3.6+
#usage: python3 secure_edge_table_initializer.py <input value1> <input value 2> 

MEM_SIZE = 8192
MEMORY_FILE_NAME = 'secure_edge_table.mem'
ARCH_FILE_NAME = 'unsecure_arch.txt'

def fill_mem_with_zeros():
    f = open(MEMORY_FILE_NAME, 'w')
    for i in range(MEM_SIZE):
        f.write("0000000000000000")
        f.write('\n')
    
    f.close()




if __name__=="__main__":
   
    fill_mem_with_zeros()


    #read all the lines of the file and save the content in a list
    with open( ARCH_FILE_NAME,"r" ) as arch_file:
        arch_lines = arch_file.readlines()
    arch_file.close()
    
    with open( MEMORY_FILE_NAME, "r" ) as mem_file:
        mem_file_lines = mem_file.read().splitlines()
    mem_file.close()
    mem_file =  open( MEMORY_FILE_NAME, "w" )
    #now in mem_file_lines there is a list of all the line of the file
    #substitute element of this list with the new one and write it back

    for line in arch_lines:
        arch = line.split( )
        res_b = (int(arch[0]) ^ int(arch[1]))
        val = 32768 | int(arch[0])
        value_to_write = f'{int(val):016b}'
        mem_file_lines[res_b] = value_to_write

    for line1 in mem_file_lines :
        mem_file.write(line1)
        mem_file.write("\n")
    mem_file.close()
    print("Operation Complete \n") 
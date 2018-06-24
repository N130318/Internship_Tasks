t=input("Enter Number of Test Cases:")
for i in range(t):
    arr=[]
    n=int(input("Enter The "+str(i)+" Array Size"))
    for j in range(n):
        e=int(input("Enter rray Elements:"))
        arr.append(e)
    print "Array is:"
    print arr
reduce_arr(arr);
def reduce_arr(arr):
    for i in range(len(arr)):
        arr.remove(max(arr))
        print arr

#Printing Data in a pattern
l1=["Hello","World","in","a","frame"];
i=0;
j=0;
for i in range(i,10):
    for j in range(j,7):
        if(i==1 or j==1 or j==10 or i==10):
            print ("*");
        elif (i<=7):
            print (" ");
        else:
            print(l1[i]);
    print("\n");

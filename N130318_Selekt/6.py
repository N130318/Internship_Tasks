# Code To Write The Whether two lists are opposite or not
l1=[2,4,5,7];
li2=[7,5,4,2];
n=4;
i=0;
c=0;
for i in range(0,n):
    if(cmp(l1[i],li2[i])):
        c=c+1;    
if(c==4):
    print ("yes");

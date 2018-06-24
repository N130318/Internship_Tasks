import sys
def pattern_print(ar):
	i=0
	l=len(ar)
	max_l=0
	ar_l=[]
	while(i<l):
		len_i=len(ar[i])
		ar_l.append(len_i)
		if(len_i>max_l):
			max_l=len_i
		i+=1
	i=0
	ind=0
	row=max_l*2
	print "*"*(row-1)
	while(i<=2*l):
		if(i%2==1):
			st=row-ar_l[ind]-3
			st1=" "*st
			st1+="*"
			print "*"+ar[ind]+st1
			ind+=1
		else:
			print " "*(2*max_l-1)
		i+=1
	print "*"*(2*max_l-1)

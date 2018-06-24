def compare_list(ar1,ar2):
	l1=len(ar1)
	l2=len(ar2)
	if(l1!=l2):
		return "No"
	else:
		i=0
		flag=1
		while(i<l1):
			if(ar1[i]!=ar2[l1-i-1]):
				flag=0
				break
			i+=1
		if(flag):
			return "Yes"
		else:
			return "No"

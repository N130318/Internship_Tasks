def lcs(str1):
	l=len(str1)
	i=l-1
	k=2
	x=[]
	st=""
	l_lcs=0
	while(i>=0):
		if(k>0):
			if(str1[i] not in x):
				x.append(str1[i])
				st+=str1[i]
				l_lcs+=1
				k-=1
			else:
				l_lcs+=1
				st+=str1[i]
		else:
			if(str1[i] not in x):
				break
			else:
				l_lcs+=1
				st+=str1[i]
		i-=1
	return st,l_lcs
'''lcs("raaraaar")'''

def duplicates1(ar):
	i=0
	l=len(ar)
	res=[]
	while(i<l):
		if(ar[i] not in res):
			res.append(ar[i])
		i+=1
	return res
def duplicates2(ar):
	return list(set(ar))
print duplicates1([1,2,3,3,3,2])
print duplicates2([1,2,3,3,3,2])

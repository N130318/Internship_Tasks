a=raw_input()
b=''.join(a)
c=[]
for i in b:
	c.append(i)
	c=sorted(c)[::-1]
print c
x=''.join(c)
print x.strip()
	

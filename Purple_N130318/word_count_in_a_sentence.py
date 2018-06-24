from collections import Counter
line = input()
a = []
for word in line.split():
    a.append(word)
b = Counter(a)
for a,c in b.items():
    print(str(a)+':'+str(c))
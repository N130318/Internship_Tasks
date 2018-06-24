framethis = raw_input('Type a string >')
box = ''
words = []

#Takes input and makes a list of the individual words
for x in framethis:
    if x == ' ':
        words.append(box)
        box = ''
    else:
        box += x
words.append(box)

#Finds length of longest word in input
longest = 0
for x in words:
    if len(x) > longest:
        longest = len(x)

#Creates top of frame
firstline = ''
for x in range(longest + 5):
    firstline += '*'

#Prints input within a frame
print(firstline)
for x in words:
    space = longest - len(x)
    print('*',x, '*');
print(firstline);

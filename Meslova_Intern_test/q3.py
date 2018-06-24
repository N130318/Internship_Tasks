import requests
import urllib
from bs4 import BeautifulSoup

query = 'Gopi Martha'
query = urllib.quote_plus(query)

r = requests.get('https://www.google.com/search?q=site:wikipedia.com+{}&gbv=1&sei=YwHNVpHLOYiWmQHk3K24Cw'.format(query))
soup = BeautifulSoup(r.text, "html.parser")
#creates soup and opens URL for Google. Begins search with site:wikipedia.com so only wikipedia
#links show up. Uses html parser.

links = []
for item in soup.find_all('h3', attrs={'class' : 'r'}):
    links.append(item.a['href'][7:]) # [7:] strips the /url?q= prefix
#Guides BS to h3 class "r" where green Wikipedia URLs are located, then prints URLs
#Limiter code to only pull top 5 results
print links

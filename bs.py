#!/usr/bin/env python

from bs4 import BeautifulSoup
import urllib
r = urllib.urlopen('file:///pocketchip-localdoc/index.html').read()
soup = BeautifulSoup(r)

print soup.prettyfy()[0:1000]

#head = soup.head
#title = soup.find("title")
#scrape = soup.find("div", class_="content")

#print soup.head
#
#print """
#<body class="index">
#<div class="page-wrapper">
#<div class="dark-box"></div>
#"""
#print scrape

#print """
#</div>
#</div>
#</BODY>
#</HTML>
#"""


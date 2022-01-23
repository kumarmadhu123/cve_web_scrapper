# Importing BeautifulSoup and 
# it is in the bs4 module
from bs4 import BeautifulSoup
  
# Opening the html file. If the file
# is present in different location, 
# exact location need to be mentioned
HTMLFileToBeOpened = open("debian.html", "r")
  
# Reading the file and storing in a variable
contents = HTMLFileToBeOpened.read()
  
# Creating a BeautifulSoup object and
# specifying the parser 
beautifulSoupText = BeautifulSoup(contents, 'lxml')
  
  
# Using the prettify method to modify the code
#  Prettify() function in BeautifulSoup helps
# to view about the tag nature and their nesting
print(beautifulSoupText.body.prettify())

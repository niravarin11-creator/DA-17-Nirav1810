#1
name = 'Python'
print(name.upper())

#2
text = 'Python'
print(text.lower())

#3
name = "python programming"
print(name.title())

#4
name = "python programming"
print(name.capitalize())

#5
text = "   Python   "

print(text.strip())

#6 Replace a string with another string
text = "I like Java"

print(text.replace("Java", "Python"))

#7 
data = "Python SQL PowerBI"

print(data.split())

#8
skills = ["Python", "SQL", "PowerBI"]

print(" - ".join(skills))

#9 find position 
text = "Python"

print(text.find("h"))

#10 count the number of occurrences of a substring in a string
text = "python programming"

print(text.count("m"))

#11 startswith() method
text = "Python"

print(text.startswith("Py"))

#12 endswith() method
text = "Python"

print(text.endswith("on"))

#13 isdigit() method check whether the string contains only digits
number = "12345"

print(number.isdigit())

#14 isalpha() method check wheter the string contains only alphabetic characters
name = "Python"

print(name.isalpha())

#15 append() method adds an item to the end of the list
fruits = ["Apple", "Banana"]

fruits.append("Mango")

print(fruits)

#16 extend() method adds all the items of a list to another list
numbers = [1,2]

numbers.extend([3,4,5])

print(numbers)

#17 insert() method inserts an item at the specified index
names = ["Rahul", "Amit"]

names.insert(1, "Chetan")

print(names)

#18 remove() method removes the first occurrence of an item from the list
fruits = ["Apple", "Banana"]

fruits.remove("Apple")

print(fruits)

#19 pop() method removes the item at the specified index and returns it
numbers = [10,20,30]

numbers.pop(1)

print(numbers)

#20 clear() method removes all items from the list
data = [1,2,3]

data.clear()

print(data)


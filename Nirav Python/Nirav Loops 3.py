# 1
for i in range(1,51):
     print(i)
#2 
for i in range(2,100,2):
    print(i)
    
#3
total = 0
for i in range(1,100):
    total = total + i
    print("total:",total)
    
#4
sales = [25000, 45000, 80000, 15000, 65000, 90000, 30000, 50000, 80000, 30000]
total_sales = sum(sales)
print(total_sales)
average_sales = sum(sales)/len(sales)
print(average_sales)

#5
sales = [25000, 45000, 80000, 15000, 65000, 90000, 30000, 50000, 80000, 30000]
count = 0

for amount in sales:
    if amount >= 50000:
        count = count + 1
        
        print("High Value Transactions:", count)
        
#6 
sales = [25000, 60000, 45000, 90000, 55000]

highest = sales[0]

for sale in sales:
    if sale > highest:
        highest = sale
    
print("Highest Sales =", highest)

#7
sales = [25000, 60000, 45000, 90000, 55000]

lowest = sales[0]

for sale in sales:
    if sale < lowest:
        lowest = sale
        
print("Lowest Sales =", lowest)

#8

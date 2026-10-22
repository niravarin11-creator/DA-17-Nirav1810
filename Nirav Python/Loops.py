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

for amount in sales:
    if amount > 50000:
        print("High Sales:", amount)
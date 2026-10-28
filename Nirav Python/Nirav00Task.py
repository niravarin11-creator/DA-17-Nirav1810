#1Task
Name = input("Enter Employee Name: ")

Basic_Salary = float(input("Enter Basic_Salary: "))
Allowances = float(input("Enter Allowances: "))
Deductions = float(input("Enter Deductions: "))

#Calculations
Gross_Salary = Basic_Salary + Allowances
Net_Salary = Gross_Salary - Deductions

print("Employee Name:", Name)
print("Basic_Salary:", Basic_Salary)
print("Allowances:", Allowances)
print("Gross_Salary:", Gross_Salary)
print("Deductions", Deductions)
print("Net_Salary:", Net_Salary)

#2Task
Name = input("Enter Student Name: ")

m1 = float(input("Enter marks in Subject1: "))
m2 = float(input("Enter marks in Subject2: "))
m3 = float(input("Enter marks in subject3: "))
m4 = float(input("Enter marks in subject4: "))
m5 = float(input("Enter marks in subject5: "))

#Calculations
total = m1 + m2 + m3 + m4 + m5
percentage = (total / 500) * 100

#Determine Grade 
if percentage >= 90:
    grade = "A+"
elif  percentage >= 75:
    grade = 

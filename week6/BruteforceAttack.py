import random

digits=list(range(0,1000))
password=random.randint(0,1000)
eachdigit=-1
print(password)
while eachdigit!=password:
    for eachdigit in digits:
        print(eachdigit)
        if eachdigit==password:
            print("Password is found:"+str(eachdigit)+"---------------------------")
            password=str(input("Enter new password if you wish"))
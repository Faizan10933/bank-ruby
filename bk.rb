
l=[10000,5000,25000,15000,12000]
p=0
q=0
r=0
s=0
puts("total money u can invest: ",l.sum)
puts("Your Money in different Banks Accounts",l) 
puts "Enter Amount to invest in mutual funds"
n= gets.to_i
if n<=10000 and n>5000
    l[0]=l[0]-n
elsif n==5000 or n<5000
    l[1]=l[1]-n
elsif n<=25000 and n>15000
    l[2]=l[2]-n
elsif n<=15000 and n>12000
    l[3]=l[3]-n
elsif n<=12000 and n>10000
    l[4]=l[4]-n
elsif n>25000
    p=n-l[2]
    l[2]=l[2]-n+p
end

if p<=5000
    l[1]=l[1]-p
elsif p>5000 and p<=10000
    l[0]=l[0]-p
elsif p>10000 and p<=12000
    l[4]=l[4]-p
elsif p>12000 and p<=15000
    l[3]=l[3]-p
elsif p>15000
    q=p-l[3]
    l[3]=l[3]-p+q
end

if q<=5000
    l[1]=l[1]-q
elsif q>5000 and q<=10000
    l[0]=l[0]-q
elsif q>10000 and q<=12000
    l[4]=l[4]-q
elsif q>12000
    r=q-l[4]
    l[4]=l[4]-q+r
end

if r<=5000
    l[1]=l[1]-r
elsif r>5000 and r<=10000
    l[0]=l[0]-r
elsif r>10000
    s=r-l[0]
    l[0]=l[0]-r+s
end

if s<=5000
    l[1]=l[1]-s

    print("Money Remains",l)
else
    print("Insufficient Money")
end

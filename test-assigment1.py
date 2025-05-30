def main():
    a = set(input().replace("[","").replace("]","").split(","))
    b = set(input().replace("[","").replace("]","").split(","))
    print(a,b,sep='\n')
    print(list(a.intersection(b)))

main()
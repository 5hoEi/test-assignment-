def simpleCipher():
    encrypted = input()
    k = int(input())
    _ = [print(chr(ord(i)+26-k) if (ord(i)-k < 65) else chr(ord(i)-k),sep='',end='') for i in encrypted]
    ## Logic behind is to check if character input in ascii code minus decrypted key is less then 65 or not if not print charater in ascii - decrypted key if yes print charater in ascii - decrypted key + 26(number of english letter)
simpleCipher()
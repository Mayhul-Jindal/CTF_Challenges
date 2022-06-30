textToDecrypt = "esb{ikjebf_axbqm_wjl_gy_pg}"
ans = []

textlen = len(textToDecrypt)

def dec(text):
    disp = textlen
    for letter in text:
        print(ord(letter))
        if (97 <= ord(letter) <= 122):
            if((ord(letter) - disp) < 97):
                cord = 123 - (97 % (ord(letter) - disp))
                ans.append(chr(cord))
        
            else:
                cord = ord(letter) - disp
                ans.append(chr(cord))
                
        else:
            ans.append(letter)
        
        disp -= 1
        
    
dec(textToDecrypt)
print(''.join(ans))

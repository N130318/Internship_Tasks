q=' '
while(q!='N'):
    q=raw_input("Are You Want to Start Game: Y/N")
    s1=raw_input("Enter A String:");
    s2=raw_input("Enter Another String:");
    if(q=="Y"):
        if u1 == u2:
            print("It's a tie!")
        elif u1 == 'rock':
            if u2 == 'scissors':
                print("Rock wins!")
            else:
                print("Paper wins!")
        elif u1 == 'scissors':
            if u2 == 'paper':
                print("Scissors win!")
            else:
                print("Rock wins!")
        elif u1 == 'paper':
            if u2 == 'rock':
                print("Paper wins!")
            else:
                print("Scissors win!")
        else:
            print("Invalid input");
    else:
        print("thank you for your participation");

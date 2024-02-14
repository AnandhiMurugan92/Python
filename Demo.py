try:

    name = (input("Enter your Name: "))
    print(f"Welcome to the Tech world {name}")

except EOFError as e:
    print(end='')
    print('\nEOFError occurred')
def is_isogram(word):
    letters = set()
    for char in list(word):
        if char.isalpha():
            if char.lower() in letters:
                return False
            letters.add(char.lower())
    return True

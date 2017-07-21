def is_isogram(word):
    letters = set()
    for char in list(word.lower()):
        if char.isalpha():
            if char in letters:
                return False
            letters.add(char)
    return True

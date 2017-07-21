def is_isogram(word):
    letters = set()
    for _, c in enumerate(word):
        if c.isalpha():
            if c.lower() in letters:
                return False
            letters.add(c.lower())
    return True

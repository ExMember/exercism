def is_isogram(word):
    letters = set()
    for i in range(len(word)):
        if word[i].isalpha():
            if word[i].lower() in letters:
                return False
            letters.add(word[i].lower())
    return True

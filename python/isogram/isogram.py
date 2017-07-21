def is_isogram(word):
    chars = [char for char in list(word.lower()) if char.isalpha()]
    return len(set(chars)) == len(chars)

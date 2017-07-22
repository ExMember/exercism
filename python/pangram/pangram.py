def is_pangram(sentence):
    chars = [char for char in list(sentence.lower()) if char.isalpha()]
    return len(set(chars)) == 26

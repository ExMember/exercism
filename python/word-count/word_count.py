def word_count(phrase):
    phrase = [char if char.isalnum() else ' ' for char in phrase.lower()]
    words = ''.join(phrase).split()
    return {word: words.count(word) for word in words}

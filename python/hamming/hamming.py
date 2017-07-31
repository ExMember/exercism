def distance(a, b):
    if len(a) != len(b):
        raise ValueError
    dist = 0
    chars = zip(a, b)
    for c in chars:
        if c[0] != c[1]:
            dist += 1
    return dist

def distance(a, b):
    if len(a) != len(b):
        raise ValueError
    return len([c for c in zip(a, b) if c[0] != c[1]])

def distance(a, b):
    if len(a) != len(b): raise ValueError("Strings must be equal length")
    return len([1 for i, j in zip(a, b) if i != j])

def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("Both strands must have the same length")
    a = [char for char in strand_a]
    b = [char for char in strand_b]

    accumulator = 0
    for index, char in enumerate(a, start = 0):
        if char != b[index]:
            accumulator += 1
    return accumulator

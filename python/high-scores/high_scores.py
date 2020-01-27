def latest(scores):
    return scores[-1]


def personal_best(scores):
    return max(scores)


def personal_top_three(scores):
    sorted_copy = sorted(scores, reverse=True)
    return sorted_copy[:3]


# personal_top_three([10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70])
# personal_top_three([40, 20, 40, 30])
# personal_top_three([30, 70])
# personal_top_three([30])

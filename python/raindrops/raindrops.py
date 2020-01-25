raindrop = {
    3: 'Pling',
    5: 'Plang',
    7: 'Plong'
}


def convert(number: int) -> str:
    output_list = [raindrop[key] for key in raindrop if number % key == 0]
    output = "".join(output_list)
    return str(output or number)


# def convert(number: int) -> str:
#     result = "".join(raindrop[key] for key in raindrop if number % key == 0)
#     return str(result or number)


# print(convert(52))
# print(convert(1))

raindrop = {3: 'Pling', 5: 'Plang', 7: 'Plong'}


def convert(number: int) -> str:
    output_list = [raindrop[key] for key in raindrop if number % key == 0]
    output = "".join(output_list)
    return str(number) if output == '' else output

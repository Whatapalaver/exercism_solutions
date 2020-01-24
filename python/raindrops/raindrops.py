raindrop = {3: 'Pling', 5: 'Plang', 7: 'Plong'}


def convert(number: int) -> str:
    output = ''
    for key in raindrop:
        if number % key == 0:
            output += raindrop[key]
    return str(number) if output == '' else output

def convert(number):
    output = pling(number) + plang(number) + plong(number)
    return str(number) if output == '' else output


def pling(number):
    return 'Pling' if number % 3 == 0 else ''


def plang(number):
    return 'Plang' if number % 5 == 0 else ''


def plong(number):
    return 'Plong' if number % 7 == 0 else ''

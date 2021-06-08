def leap_year(year):
    if not isinstance(year, int):
        raise ValueError("Year must be passed as an integer")

    return  year % 4 == 0 and (year % 100 != 0 or year % 400 == 0)

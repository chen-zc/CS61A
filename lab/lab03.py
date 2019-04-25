""" Lab 3: Recursion and Midterm Review """

def gcd(a, b):
    """Returns the greatest common divisor of a and b.
    Should be implemented using recursion.

    >>> gcd(34, 19)
    1
    >>> gcd(39, 91)
    13
    >>> gcd(20, 30)
    10
    >>> gcd(40, 40)
    40
    """
    "*** YOUR CODE HERE ***"
    if a >= b:
        big = a
        small = b
    else:
        big = b
        small = a
    if big % small == 0:
        return small
    else:
        big = big % small
        return gcd(big, small)

def hailstone(n):
    """Print out the hailstone sequence starting at n, and return the
    number of elements in the sequence.

    >>> a = hailstone(10)
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7
    """
    "*** YOUR CODE HERE ***"

    print(n)
    if n == 1:
        return 1
    else:
        if n % 2 == 0:
            return 1 + hailstone(n//2)
        else:
            return 1 + hailstone(n*3+1)

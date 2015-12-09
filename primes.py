"""
Module to determine primer number or not
"""


class PrimeClass(object):
    """
    Class with the function is_prime.
    """

    def is_prime(self, num_int):
        """
        method to determine if the number is prime or not
        """
        # your primes code here
        if num_int == 1:
            return False
        else: 
            for i in range(2, num_int):
                if num_int % i == 0:
                    return False
        return True
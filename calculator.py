"""
Module to sum all the numbers
"""


class CalculatorClass(object):
    """
    Class with the method with sum 
    """

    def sum(self, num_list):
        """
        method to sum the list numbers
        """
        # your sum code here
        suma = 0
        for i in num_list:
        	suma += i
        return suma

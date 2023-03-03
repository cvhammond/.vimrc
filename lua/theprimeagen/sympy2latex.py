import vim, sys
from sympy import *
import sys

def main():
    start = vim.current.window.cursor[1]
    if start == 0:
        enders = '$$'
    else:
        enders = '$'
    out = convertSympyToLatex(vim.current.buffer[vim.current.window.cursor[0]-1])
    vim.current.buffer[vim.current.window.cursor[0]-1] = enders + out + enders

def convertSympyToLatex(value):
    while(True):
        try:
            return latex(eval(value))
        except NameError as e:
            symbol = str(e).split("'")[1]
            exec(symbol + ' = symbols("' + symbol + '")')
        except Exception as e:
            return e


if __name__ == "__main__":
    main()


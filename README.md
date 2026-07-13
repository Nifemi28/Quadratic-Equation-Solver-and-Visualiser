# Quadratic Equation Solver & Visualiser (MATLAB)

A MATLAB script that solves quadratic equations of the form `y = ax² + bx + c`, validates user input and plots the resulting curve with any real roots highlighted.

## Features

- **Interactive command-line input** for coefficients `a`, `b`, and `c`
- **Input validation** — rejects negative, zero, non-numeric, complex and infinite values, with clear error messages guiding the user to re-enter valid input
- **Discriminant based root analysis** — determines whether the equation has two real roots, one repeated root, or no real roots
- **Root calculation** using the quadratic formula
- **Graph plotting** of the curve over a fixed x-range, with any real roots marked directly on the graph
- Clean, labelled plot with axis labels, title, legend and grid

## How It Works

1. Prompts the user for `a`, `b` and `c`, looping on each input until a valid positive, real, finite number is entered
2. Calculates the discriminant `D = b² - 4ac` to determine the number of real roots
3. Solves for the root(s) using the quadratic formula where applicable
4. Plots `y = ax² + bx + c` across a sample range of x-values
5. Overlays markers on the graph at any real root locations for a clear visual result




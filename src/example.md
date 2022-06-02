---
title: "Example"
date: \today
author: "Tanmay"
bibliography: ["bibliography.bib"]
---

# Image {#sec:ImageSection}

![Description](img/800x400.png){#fig:FigureRef}

Seen in [@fig:FigureRef], lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. [@online]

# Equation {#sec:EquationExample}

Cauchy's integral formula [@dixon1971brief]

$$
f(a)=\frac{1}{2πi}∮_γ\frac{f(z)}{z-a}\,dz
$$ {#eq:EquationRef}

As seen in [@eq:EquationRef], duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

# Source Code {#sec:PythonCode}

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

```python
def foo():
    return "bar"
```

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

# Table {#sec:TableExample}

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

: Table styles {#tbl:TableRef}

Seen in [@tbl:TableRef], Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

# References

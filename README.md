# Applied Predictive Modeling - Notes & Exercises

by M. Kuhn and K. Johnson

* [Amazon](https://www.amazon.com/gp/product/1461468485)

![Book Cover](https://images-na.ssl-images-amazon.com/images/I/41S7RyAnsLL._SX313_BO1,204,203,200_.jpg "Applied Predictive Modeling")

## Usage

### Prep Data

In order to work with the data using Python based tools, we need a way to extract the data from the
AppliedPredictiveModeling R package.

From within the repo:

```
mkdir data
cd computing-python
{path to R executable} < apm-export-data.r --vanilla
```

## Credits

Thanks goes to [Lei Gong](https://github.com/LeiG) for the great work put into the Python
translations of many of the book's code examples
(found [here](https://github.com/LeiG/Applied-Predictive-Modeling-with-Python)).

Although less comprehensive than Lei's work, in the _./computing-python_ notebooks, I've aimed to
"minimally" reproduce the "Computing" sections from the book, using Python rather than R.  Lei's
notebooks have been an awesome resource helping me to identify approaches for doing that.

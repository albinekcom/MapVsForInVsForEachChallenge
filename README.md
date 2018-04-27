# Map vs for in vs forEach Challenge

![Swift 4.1](https://img.shields.io/badge/Swift-4.1-orange.svg)
[![Build Status](https://travis-ci.org/albinekcom/MapVsForInVsForEachChallenge.svg?branch=master)](https://travis-ci.org/albinekcom/MapVsForInVsForEachChallenge)

`map()` or `for in` or `forEach()`? Comparing performance of map method vs for in vs forEach method.


## Usage

Run the command below and compare the results.

```bash
$ swift test
```

> Modify `arrayLength` property in `MapVsForInVsForEachChallengeTests` class to check performance for longer / shorter array.


## Test Environment

- Device: MacBook Pro (15-inch, Mid 2015, 2.2GHz Intel Core i7, 16GB RAM)
- OS: macOS High Sierra 10.13.4
- Swift: 4.1
- Array length: 10,000,000


## Test Results

| Variant     | Average duration |
|-------------|------------------|
| `map()`     | 1.227 sec        |
| `for in`    | 1.892 sec        |
| `forEach()` | 2.135 sec        |


## Conclusions

`map()` is the fastest

# Counting Sort and Radix Sort

## Key points

- only for integer arrays
- stable sort

## Counting sort: computing the prefix sum partition table

- create int[10] count
- compute 0-9 occurences and store in count array
- for (int i = 1; i < 10; i++) count[i] += count[i-1]

## Extract n-th digit from an integer

```
digit = (number / 10^n) % 10
```

## Radix sort

```pseudoCode
for i = 0 to max_digits do
    counting sort by i-th digit
```

_Note: radix base doesn't have to be 10

# XOR Operations

## Key points

- 0 ^ 0 = 0; 1 ^ 1 = 0; 0 ^ 1 = 1; 1 ^ 0 = 1
- xor is equivalent to addtion without carrying
- xor is communitative and associative
- n ^ n = 0
- 0 ^ n = n
- a ^ b ^ b = a (encryption and decryption using b as key)
- if a ^ b = c, then c ^ b = a and c ^ a = b
- flip n-th bit of a: (1 << n) ^ a
- get the sign bit of an integer: (n >>> 31) ^ 1 == 1 ? positive : negative
- Brian Kernighan Algorithm
  * get the rightmost set bit: n & (~n + 1) or n & -n
  * clear the rightmost set bit: n & (n - 1)

## Problems

1. Black and white balls in a bag

There are n black balls and m white balls in a bag.
Randomly take two balls a time.
If the two balls are of the same color, then put a white ball back to the bag.
If the two balls have different colr, then put a black ball back to the bag.
Repeat until there is only one ball left in the bag.
What's the probability that the last ball is black?

Hint: let white ball = 0 and black ball = 1 =>  0 ^ 0 = 0; 1 ^ 1 = 0; 0 ^ 1 = 1; 1 ^ 0 = 1
```pseudoCode
balls <- queue of 1's and 0's
while balls.size >= 2 do
    b1 <- balls.poll()
    b2 <- balls.poll()
    balls.add(b1 ^ b2)
return balls.peek()
```
Conclusion: if number of black balls is odd then last one is black othersize white
    
2. Swap two integers without additional variable
```java
int a = 1, b = 2;
a = a ^ b;
b = a ^ b;
a = a ^ b;
// a = 2, b = 1
```

3. Implementing `int Max(int a, int b)` function without using comparision operator.

Hint: check the sign of (a - b), however avoid overflow

4. Given an integer array of size n, one number within range from 0 to n is missing. Find the number.

```pseudoCode
a <- xor of all numbers from 0 to n
b <- xor of all numbers in the array
return a ^ b
```

5. Find the only number that appears odd times in an array.

6. Find the only two numbers that appears odd times in an array.

```pseudoCode
a <- xor of all numbers in array // a = num1 ^ num2
bitmask = a & (-a) // the rightmost set bit
b <- xor of all numbers in array such that num & bitmask == 0 // b = num1 or num2
c = a ^ b
return [b, c]
```

7. All number in an array appear m times except one. Find the number.


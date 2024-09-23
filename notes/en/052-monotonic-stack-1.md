# Monotonic Stack I

## Prerequisite

Implementing Stack or Queue with an array

## Classic example of using monotonic stack

### Given an array of unique integers, find the closest smaller numbers to the left and right of each element.

Example:

         0  1  2  3  4  5  6  7
input: [ 2, 5, 6, 7, 3, 4, 1, 8 ]
left:  [-1, 0, 1, 2, 0, 4,-1, 6 ]
right: [ 1, 2, 3, 7, 5, 7, 7,-1 ] 

Solution:

1. Create a stack
2. Keep pushing in numbers in incremental order until the incoming number is smaller than the top
3. Pop out the numbers that are greater than the incoming number.
   For each popped out number the closest smaller to the left is the one on the top,
   and the closest small to the right is the incoming number
4. Push the incoming number into the stack
5. Repeat step 2 to 4 until every element in array is processed

Algorithm:

```pseudoCode
left = new int[input.length]
right = new int[input.length]
fill(left, -1)
fill(right, -1)
stack = new Stack()
for i = 0 to input.length-1 do
    if stack.empty() or input[i] > input[stack.top()] then
        stack.push(i)
    else
        while input[stack.top()] > input[i] do
            j = stack.pop()
            left[j] = stack.top() or -1
            right[j] = i
        stack.push(i)
while not stack.empty() do
    j = stack.pop()
    left[j] = stack.top() or -1
return [left, right]       
```   

### Given an array of non-unique integers, find the closest smaller numbers to the left and right of each element.

Hint: similar to the previous example but need to correct right array

### Given an integer array, find the closest larger numbers to the left and right of each element.



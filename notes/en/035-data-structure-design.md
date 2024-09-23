# Data Structure Design FAQs

## Hash Map with a setAll Method

Design idea:

1. add a timestamp value to each map value
2. use two static variables `timestamp` and `setAllValue` to keep track of the most recent value
3. update timestamp for each put
4. update static timestamp and setAllValue with `setAll` method

## LRU Cache

Design idea: 
1. doubly linked list with each node storing key and value
2. hash map with `key` as key and pointer to the node as value 
3. calling the `get` method moves the node to the front
4. when the list is full, calling the `put` method first removes the last node and then
   add the new node to the front; updates map accordingly

## Data Structure to add, remove and get random elements with O(1)

Design idea:
1. use a array to store data with a `size` variable to mark the last element
2. use a value-to-index map to quickly find array index for a value
3. to delete an element, replace the deleted with the last element and then update the map
 
## Data Structure to add, remove and get random elements with O(1) (allow repeating elements)

Design idea:
1. use a array to store data with a `size` variable to mark the last element
2. use a value-to-index map to quickly find array index for a value; the value of the map is a list of indices
3. to delete an element, replace the deleted with the last element and then update the map

## Data Structure to quickly find median from a data stream

Design idea:
1. use max heap to store the smaller half of the data steam
2. use min heap to store the larger half of the data stream
3. compare the new element with the top of two heaps and then put it to the correct one
4. adjust the min or max heap if the size difference is bigger than 1

## Stack to get most the frequent element

Design idea:
1. element-to-freq map
2. variable `maxFreq`: the maximum frequency
3. List<List<Integer>>: data store with the index as element frequency

## Implement the following interface with O(1) for all operations

```
public interface AllOne {
    void inc(String key);
    void dec(String key);
    String getMaxKey();
    String getMinKey();
```

Design idea:
1. Bucket class with freq and a set of keys
2. Doubly linked list of Buckets with dummy head Bucket("",0) and dummy tail Bucket("",Integer.MAX_VALUE)
3. Map of key to Bucket


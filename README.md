# Stock_update

#### Problem Description
Update the stock with new products. If the product in the stock update is new, add it to the current stock. If the product in the stock update is present in the current stock, add it, but only if the current stock is not already full. Assume that the data is correct, e.g. there are no negative numbers in the stock update. Data is given in a line-by-line format and the answer is expected in the same format. It should be sorted in the same order as the input data with new items added to the end in the same order they are encountered in the stock update.

```current_stock
10,Glass
2,Water bottle
30,Pen,full
0,Lamp,out of stock
stock_update
2,Lamp
15,Glass
8,Lemon
3,Pen
end
```
```
Output data:
25,Glass
2,Water bottle
30,Pen,full
2,Lamp
8,Lemon
```

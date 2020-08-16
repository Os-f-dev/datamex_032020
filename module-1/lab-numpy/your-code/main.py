#1. Import the NUMPY package under the name np.

import numpy as np

#2. Print the NUMPY version and the configuration.
print(np.__version__)
print(np.show_config())
1.18.5



#3. Generate a 2x3x5 3-dimensional array with random values. Assign the array to variable "a"
# Challenge: there are at least three easy ways that use numpy to generate random arrays. How many ways can you find?
a = np.random.random((2,3,5))
a_2 = np.random.randint(0, 100, size=(2, 3, 5))
a_3=np.random.randn(2,3,5) 


#4. Print a.
array([[[0.70769406, 0.55711907, 0.8465256 , 0.48194167, 0.45399194],
        [0.5935242 , 0.69807541, 0.33533943, 0.70037204, 0.99478572],
        [0.40181784, 0.13047577, 0.20513537, 0.637668  , 0.62368954]],

       [[0.86605422, 0.08267375, 0.21657404, 0.25413526, 0.19210814],
        [0.91089636, 0.47929393, 0.0130863 , 0.9112237 , 0.8866287 ],
        [0.62479582, 0.5520903 , 0.00338811, 0.62802373, 0.98710819]]])


#5. Create a 5x2x3 3-dimensional array with all values equaling 1.
#Assign the array to variable "b"
b = np.full(shape=(5, 2, 3), fill_value = 1)


#6. Print b.
array([[[1, 1, 1],
        [1, 1, 1]],

       [[1, 1, 1],
        [1, 1, 1]],

       [[1, 1, 1],
        [1, 1, 1]],

       [[1, 1, 1],
        [1, 1, 1]],

       [[1, 1, 1],
        [1, 1, 1]]])


#7. Do a and b have the same size? How do you prove that in Python code?
a.ndim == b.ndim #yes, cause the arrays have the same amount of dimentions.
True


#8. Are you able to add a and b? Why or why not?
f = a+b
f
#No, beacause they need to have exactly the same amount of dimensions


#9. Transpose b so that it has the same structure of a (i.e. become a 2x3x5 array). Assign the transposed array to varialbe "c".
c = b.reshape(2,3,5)
c
array([[[1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1]],

       [[1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1]]])


#10. Try to add a and c. Now it should work. Assign the sum to varialbe "d". But why does it work now?
d = a+c
d
#it works becuase the have the same amount of dimentions


#11. Print a and d. Notice the difference and relation of the two array in terms of the values? Explain.
[[[0.70769406 0.55711907 0.8465256  0.48194167 0.45399194]
  [0.5935242  0.69807541 0.33533943 0.70037204 0.99478572]
  [0.40181784 0.13047577 0.20513537 0.637668   0.62368954]]

 [[0.86605422 0.08267375 0.21657404 0.25413526 0.19210814]
  [0.91089636 0.47929393 0.0130863  0.9112237  0.8866287 ]
  [0.62479582 0.5520903  0.00338811 0.62802373 0.98710819]]]
[[[1.70769406 1.55711907 1.8465256  1.48194167 1.45399194]
  [1.5935242  1.69807541 1.33533943 1.70037204 1.99478572]
  [1.40181784 1.13047577 1.20513537 1.637668   1.62368954]]

 [[1.86605422 1.08267375 1.21657404 1.25413526 1.19210814]
  [1.91089636 1.47929393 1.0130863  1.9112237  1.8866287 ]
  [1.62479582 1.5520903  1.00338811 1.62802373 1.98710819]]]



#12. Multiply a and c. Assign the result to e.
e=a*c



#13. Does e equal to a? Why or why not?

a==e
# yes because c only contains values, it multiplies for everything


#14. Identify the max, min, and mean values in d. Assign those values to variables "d_max", "d_min", and "d_mean"
d_max=np.amax(d)
d_min=np.amin(d)
d_mean=np.mean(d)



#15. Now we want to label the values in d. First create an empty array "f" with the same shape (i.e. 2x3x5) as d using `np.empty`.
f=np.zeros_like(d)




"""
#16. Populate the values in f. For each value in d, if it's larger than d_min but smaller than d_mean, assign 25 to the corresponding value in f.
If a value in d is larger than d_mean but smaller than d_max, assign 75 to the corresponding value in f.
If a value equals to d_mean, assign 50 to the corresponding value in f.
Assign 0 to the corresponding value(s) in f for d_min in d.
Assign 100 to the corresponding value(s) in f for d_max in d.
In the end, f should have only the following values: 0, 25, 50, 75, and 100.
Note: you don't have to use Numpy in this question.
"""
for a in range(0,2):
     for b in range(0,3):
         for c in range(0,5):
             if d[a,b,c] > d_min and d[a,b,c] < d_mean:
                f[a,b,c] = 25
             elif d[a,b,c] >d_mean and d[a,b,c] < d_max:
                 f[a,b,c] = 75
             elif d[a,b,c] == d_mean:
                 f[a,b,c] = 50
             elif d[a,b,c] == d_min:
                 f[a,b,c] = 0
             elif d[a,b,c] == d_max:
                 f[a,b,c] = 100
                    



"""
#17. Print d and f. Do you have your expected f?
For instance, if your d is:
array([[[1.85836099, 1.67064465, 1.62576044, 1.40243961, 1.88454931],
        [1.75354326, 1.69403643, 1.36729252, 1.61415071, 1.12104981],
        [1.72201435, 1.1862918 , 1.87078449, 1.7726778 , 1.88180042]],

       [[1.44747908, 1.31673383, 1.02000951, 1.52218947, 1.97066381],
        [1.79129243, 1.74983003, 1.96028037, 1.85166831, 1.65450881],
        [1.18068344, 1.9587381 , 1.00656599, 1.93402165, 1.73514584]]])

Your f should be:
array([[[ 75.,  75.,  75.,  25.,  75.],
        [ 75.,  75.,  25.,  25.,  25.],
        [ 75.,  25.,  75.,  75.,  75.]],

       [[ 25.,  25.,  25.,  25., 100.],
        [ 75.,  75.,  75.,  75.,  75.],
        [ 25.,  75.,   0.,  75.,  75.]]])
"""
f_2=f.astype(str)
for a in range(0,2):
        for b in range(0,3):
            for c in range(0,5):
             if d[a,b,c] > d_min and d[a,b,c] < d_mean:
                 f[a,b,c] = 'B'
             elif d[a,b,c] >d_mean and d[a,b,c] <d_max:
                 f[a,b,c] = ('D')
             elif d[a,b,c] == d_mean:
                 f[a,b,c] = 'C'
             elif d[a,b,c] == d_min:
                 f[a,b,c] = 'A'
             elif d[a,b,c] == d_max:
                 f[a,b,c] = 'E'
print(f_2)

"""
#18. Bonus question: instead of using numbers (i.e. 0, 25, 50, 75, and 100), how to use string values 
("A", "B", "C", "D", and "E") to label the array elements? You are expecting the result to be:
array([[[ 'D',  'D',  'D',  'B',  'D'],
        [ 'D',  'D',  'B',  'B',  'B'],
        [ 'D',  'B',  'D',  'D',  'D']],

       [[ 'B',  'B',  'B',  'B',  'E'],
        [ 'D',  'D',  'D',  'D',  'D'],
        [ 'B',  'D',   'A',  'D', 'D']]])
Again, you don't need Numpy in this question.
"""
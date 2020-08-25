#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np


# In[2]:


print(np.version.version)


# In[3]:


a = np.random.random((2,4,5))


# In[4]:


a


# In[5]:


b = np.ones((5,4,2))


# In[6]:


b


# In[7]:


b.shape == a.shape


# In[8]:


a + b


# In[9]:


np.add(a,b)


# ## Is not posible because they dont have the same number of elements.

# In[10]:


b


# In[11]:


c = b.T


# In[12]:


c


# In[13]:


d = np.add(a,c)


# In[14]:


d


# In[15]:


e = a*c


# In[16]:


e


# In[17]:


a == e


# ## Is equal

# In[18]:


d_max = d.max()
d_min = d.min()
d_mean = d.mean()


# In[19]:


d_max


# In[20]:


d_min


# In[21]:


d_mean


# In[22]:


d


# In[25]:


f = np.empty((2,4,5))


# In[26]:


for i in range(len(d)):
    for j in range(len(d[1])):
        for k in range(len(d[0][0])):
            if d [i][j][k] > d_min and d [i][j][k] < d_mean:
                f [i][j][k] = 25
            elif d [i][j][k] > d_mean and d [i][j][k] < d_max:
                f [i][j][k] = 75
            elif d [i][j][k] == d_mean:
                f [i][j][k] = 50
            elif d [i][j][k] == d_min:
                f [i][j][k] = 0
            else: 
                f [i][j][k] = 100


# In[27]:


f


# In[28]:


e = np.array(f).tolist()


# In[29]:


e


# In[32]:


for i in range(len(d)):
    for j in range(len(d[1])):
        for k in range(len(d[0][0])):
            if d [i][j][k] > d_min and d [i][j][k] < d_mean:
                e [i][j][k] = "M"
            elif d [i][j][k] > d_mean and d [i][j][k] < d_max:
                e [i][j][k] = "N"
            elif d [i][j][k] == d_mean:
                e [i][j][k] = "Q"
            elif d [i][j][k] == d_min:
                e [i][j][k] = "F"
            else: 
                e [i][j][k] = "W"


# In[33]:


e


# In[ ]:





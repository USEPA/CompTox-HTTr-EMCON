from numba import vectorize,float64
import numpy as np


@vectorize([float64(float64, float64, float64, float64)],target="parallel")
def chisq(o1,o2,o3,n):
    o4 = n - o1 - o2 - o3
    c1 = o1 + o3
    c2 = o2 + o4
    r1 = o1 + o2
    r2 = o3 + o4
    
    e1 = c1 / n * r1
    e2 = c2 / n * r1
    e3 = c1 / n * r2
    e4 = c2 / n * r2
    
    chi2 = ((o1-e1)**2)/e1 + ((o2-e2)**2)/e2 + ((o3-e3)**2)/e3 + ((o4-e4)**2)/e4
    
    return chi2

@vectorize([float64(float64, float64, float64, float64)],target="parallel")
def log_liklihood(o1,o2,o3,n):
    o4 = n - o1 - o2 - o3
    c1 = o1 + o3
    c2 = o2 + o4
    r1 = o1 + o2
    r2 = o3 + o4
    
    e1 = c1 / n * r1
    e2 = c2 / n * r1
    e3 = c1 / n * r2
    e4 = c2 / n * r2
    
    ll = (2.0*(o1*np.log2(o1/e1)))+(2.0*(o2*np.log2(o2/e2)))+(2.0*(o3*np.log2(o3/e3)))+(2.0*(o4*np.log2(o4/e4)))
    
    return ll

@vectorize([float64(float64, float64, float64, float64)],target="parallel")
def pmi(xy_freq,x_freq,y_freq,n):
    xy = xy_freq/n
    x = x_freq/n
    y = y_freq/n
    return np.log2(xy/(x*y))

@vectorize([float64(float64,float64,float64)],target="parallel")
def npmi(pmi,xy_freq,n):
    return pmi/(np.log2((xy_freq/n)) * -1)
awk ' BEGIN { 
for (n=1; n<=9; ++n) 
for (p=5; p<=9; ++p) 
for (q=5; q<=9; ++q) 
for (r=1; r<=9; ++r) 
for (s=1; s<=9; ++s) 
for (t=1; t<=2; ++t) 
for (u=1; u<=9; ++u) 
for (v=1; v<=9; ++v) 
for (w=1; w<=9; ++w) {
if (n==p||n==q||n==r||n==s||n==t||n==u||n==v||n==w) continue 
if (p==q||p==r||p==s||p==t||p==u||p==v||p==w) continue 
if (q==r||q==s||q==t||q==u||q==v||q==w) continue 
if (r==s||r==t||r==u||r==v||r==w) continue 
if (s==t||s==u||s==v||s==w) continue 
if (t==u||t==v||t==w) continue 
if (u==v||u==w) continue 
if (v==w) continue 
a = (n*(p*10+q) + r/s) / (t*10+u+(v/w)) 
#if (a != 50) continue 
if (a <= 49.99 || a >= 50.01) continue 
#if (t!=1) continue 
#if (p!=7&&p!=8&&p!=9) continue 
#if (q!=7&&q!=8&&q!=9) continue 
print n,p,q,r,s,t,u,v,w 
printf "%.20f n39.%d%d.%d%d%d w84.%d%d.%d%d%d\n", a, t,q,q,v,n, t,p,p,q,u } } '

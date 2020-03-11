N=100000
dx=1.0 / N
s = 0
for x in range(0, N):
	s += dx / ( 1 + ((x+0.5)*dx)**2 )
print(s*4)

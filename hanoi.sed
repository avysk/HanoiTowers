#n
:start
/^$/ { a\
BYE.
       q 0}

h
s/../X/g
/X$/! b ODD

# cosmetic label, is not used
:EVEN
g

s/^\(.*\)$/1:\1 2: 3:/

:AB
/1: 2: 3:/ { p
             c\
SOLVED.
}

p
# A <--> B

# B is empty
/2: / { s/1:\(.*\)\(.\) 2:\(.*\) 3:/1:\1 2:\3\2 3:/
        b AC }

# A is empty
/1: / { s/1: 2:\(.*\)\(.\) 3:/1:\2 2:\1 3:/
        b AC }

# A is not empty, B is not empty

h

# Let's check the direction
s/^1:.*\(.\) 2:.*\(.\) 3:.*$/\1\2/

s/a*b*c*d*e*f*g*h*i*j*k*l*m*n*o*p*q*r*s*t*u*v*w*x*y*z*/X/g

# order is A to B
/^XX$/ { g
         s/1:\(.*\)\(.\) 2:\(.*\) 3:/1:\1 2:\3\2 3:/
         b AC }

# order is B to A

/^X$/ {  g
         s/1:\(.*\) 2:\(.*\)\(.\) 3:/1:\1\3 2:\2 3:/
         b AC }

:AC
p
# A <--> C

# C is empty
/3:$/ { s/1:\(.*\)\(.\) \(.*\) 3:$/1:\1 \3 3:\2/
        b BC }

# A is empty
/1: / { s/1: \(.*\) 3:\(.*\)\(.\)/1:\3 \1 3:\2/
        b BC }

# A is not empty, C is not empty

h

# Let's check the direction
s/^1:.*\(.\) .* 3:.*\(.\)$/\1\2/

s/a*b*c*d*e*f*g*h*i*j*k*l*m*n*o*p*q*r*s*t*u*v*w*x*y*z*/X/g

# order is A to C
/^XX$/ { g
         s/1:\(.*\)\(.\) \(.*\) 3:\(.*\)/1:\1 \3 3:\4\2/
         b BC }

# order is C to A

/^X$/ {  g
         s/1:\(.*\) \(.*\) 3:\(.*\)\(.\)/1:\1\4 \2 3:\3/
         b BC }

:BC
/1: 2: 3:/ { p
             c\
SOLVED.
}

p
# B <--> C

# C is empty
/3:$/ { s/2:\(.*\)\(.\) 3:$/2:\1 3:\2/
        b AB }

# B is empty
/2: / { s/2: 3:\(.*\)\(.\)/2:\2 3:\1/
        b AB }

# B is not empty, C is not empty

h

# Let's check the direction
s/^1:.* 2:.*\(.\) 3:.*\(.\)$/\1\2/

s/a*b*c*d*e*f*g*h*i*j*k*l*m*n*o*p*q*r*s*t*u*v*w*x*y*z*/X/g

# order is B to C
/^XX$/ { g
         s/2:\(.*\)\(.\) 3:\(.*\)/2:\1 3:\3\2/
         b AB }

# order is C to B

/^X$/ {  g
         s/2:\(.*\) 3:\(.*\)\(.\)/2:\1\3 3:\2/
         b AB }


i\
ERROR
p

# THE CASE OF ODD NUMBER OF DISCS
:ODD
g

s/^\(.*\)$/1:\1 2: 3:/

:AC_O
/1: 2: 3:/ { p
             c\
SOLVED.
}
p
# A <--> C

# C is empty
/3:$/ { s/1:\(.*\)\(.\) \(.*\) 3:$/1:\1 \3 3:\2/
        b AB_O }

# A is empty
/1: / { s/1: \(.*\) 3:\(.*\)\(.\)/1:\3 \1 3:\2/
        b AB_O }

# A is not empty, C is not empty

h

# Let's check the direction
s/^1:.*\(.\) .* 3:.*\(.\)$/\1\2/

s/a*b*c*d*e*f*g*h*i*j*k*l*m*n*o*p*q*r*s*t*u*v*w*x*y*z*/X/g

# order is A to C
/^XX$/ { g
         s/1:\(.*\)\(.\) \(.*\) 3:\(.*\)/1:\1 \3 3:\4\2/
         b AB_O }

# order is C to A

/^X$/ {  g
         s/1:\(.*\) \(.*\) 3:\(.*\)\(.\)/1:\1\4 \2 3:\3/
         b AB_O }


:AB_O
/1: 2: 3:/ { p
             c\
SOLVED.
}

p
# A <--> B

# B is empty
/2: / { s/1:\(.*\)\(.\) 2:\(.*\) 3:/1:\1 2:\3\2 3:/
        b BC_O }

# A is empty
/1: / { s/1: 2:\(.*\)\(.\) 3:/1:\2 2:\1 3:/
        b BC_O }

# A is not empty, B is not empty

h

# Let's check the direction
s/^1:.*\(.\) 2:.*\(.\) 3:.*$/\1\2/

s/a*b*c*d*e*f*g*h*i*j*k*l*m*n*o*p*q*r*s*t*u*v*w*x*y*z*/X/g

# order is A to B
/^XX$/ { g
         s/1:\(.*\)\(.\) 2:\(.*\) 3:/1:\1 2:\3\2 3:/
         b BC_O }

# order is B to A

/^X$/ {  g
         s/1:\(.*\) 2:\(.*\)\(.\) 3:/1:\1\3 2:\2 3:/
         b BC_O }

:BC_O

p
# B <--> C

# C is empty
/3:$/ { s/2:\(.*\)\(.\) 3:$/2:\1 3:\2/
        b AC_O }

# B is empty
/2: / { s/2: 3:\(.*\)\(.\)/2:\2 3:\1/
        b AC_O }

# B is not empty, C is not empty

h

# Let's check the direction
s/^1:.* 2:.*\(.\) 3:.*\(.\)$/\1\2/

s/a*b*c*d*e*f*g*h*i*j*k*l*m*n*o*p*q*r*s*t*u*v*w*x*y*z*/X/g

# order is B to C
/^XX$/ { g
         s/2:\(.*\)\(.\) 3:\(.*\)/2:\1 3:\3\2/
         b AC_O }

# order is C to B

/^X$/ {  g
         s/2:\(.*\) 3:\(.*\)\(.\)/2:\1\3 3:\2/
         b AC_O }

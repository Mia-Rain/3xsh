-------
<pre>

This is a simple proof of concept test script
for the Collatz conjecture issue I recently learned off
The Collatz conjecture in some basic sh is:
</pre>

```sh
# $1 = integer
# $1 must be >=1
num=$1 # use $num since redifing will happen
[ "$(($num%2))" = "0" -a "$num" -ge "4" ] && {
# if int ($num) is even AND >= 4
  num=$(($num/2))
# divide by 2
} || [ "$(($num%2))" != "0" -a "$num" -ge "4" ] && {
# if int ($num) is NOT even AND >= 4
  num=$(($num*3)); : $(($num+=1))
# *3 + 1
}
```
<pre>

then simply repeat the above until $num is 4 or 1
as a loop occurs here;
</pre>

```text
4 / 2 = 2 # 4 is even so divide by 2
2 / 2 = 1 # 2 is even so divide by 2
1 * 3 + 1 = 4 # 1 is _odd_ so * 3 + 1
... # Loop begins
```

<pre>

I found the above quite odd; I also found the answer
obv; simply test it. the above shell program could and will
be made in puresh at `./3x.sh`
</pre>
-------

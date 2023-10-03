VAR score = 0
VAR dealt = 0
VAR value = 0

-> Loop
=== Loop ===
You have {score}.
+   Stop
    -> END
+   Draw
    ~ dealt = RANDOM (1, 13)
    {
    - dealt == 1:
     You got an ace
    -> ace ->
     
    - dealt == 11:
     You got a jack
     ~ value = 10
     
    - dealt == 12:
     You got a queen
     ~ value = 10
     
    - dealt == 13:
     You got a king
     ~ value = 10
     
    -else:
     You got a {dealt}
     ~ value = dealt
    }
-
~ score += value

{
 - score == 21:
    BlackJack!
    
    ->END
 - score <= 21:
    ->Loop
 - else:
    You have lost with a score of {score}
    ->END
}
  
 = ace
+   {score != 10} Use it as a 1.
    ~ value = 1
+   {score == 10} Use it as an 11.
    ~ value = 11
-
 ->->


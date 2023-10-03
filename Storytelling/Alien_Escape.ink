VAR distance = 4
VAR max_distance = 10
VAR oxygen = 2
VAR luck = 50
VAR good_step = 2
VAR bad_step = 1
VAR fear = 0

-> Loop
=== Loop ===
 The alien is {distance} meters away.
{
 - distance <= 3:
    You are terrified
    ~ fear += 2
}
{
 - fear > 6:
    It seems like it's smelling your fear!
    It's very suspicious now.
    ~ good_step= 1
}
 +  Hold your breath
    ~ fear ++
     {
     -oxygen == 2:
        ~ oxygen --
        ~ luck = 100
        ~ bad_step = 0
     -oxygen == 1:
        ~ oxygen --
        ~ luck = 70
        ~ bad_step = 1
     -oxygen == 0:
        You try to hold your breath but you can't do it anymore...
        You take a deep breath.
        The alien might have heard you...
        ~ luck = 0
        ~ oxygen = 2
        ~ bad_step = 2
    }
    
 +  Just wait
    {
     -oxygen < 2:
        You breath again...
    }
    ~ oxygen = 2
    ~ luck = 50
    ~ bad_step = 2
    
 +  Run
    ->run
 -  The alien looks for you.
 
~ temp coin_toss = RANDOM(0, 99)
{
 - coin_toss < luck:
    It's getting closer!
    ~ distance = bad_step
- else:
    It was distracted by something far away...
    ~ distance = good_step
}

{
 - distance > max_distance:
    ~ distance = max_distance
 - distance <= 0:
    THE ALIEN CAUGHT YOU!
    You die in excruciating pain
    -> END
}

-> Loop

= run
You try to run away from this nightmare
-> END


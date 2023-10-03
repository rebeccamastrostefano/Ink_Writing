VAR img1= "a duck"
VAR img2= "a car"
VAR img3= "a cloud"

VAR slot1= ""
VAR slot2= ""
VAR slot3= ""
VAR slot4= ""
VAR slot5= ""
VAR slot6= ""

~ slot1 = img1
~ slot2 = img2
~ slot3 = img3
~ slot4 = img2
~ slot5 = img1
~ slot6 = img3

VAR hidden1 = true
VAR hidden2 = true
VAR hidden3 = true
VAR hidden4 = true
VAR hidden5 = true
VAR hidden6 = true

VAR hidden_count = 6
 //Yous should make this with an array to avoid copypasting
 
VAR pick1 = 0
VAR pick2 = 0

VAR picked_img1 = ""
VAR picked_img2 = ""
-> Loop

=== Loop ===
{
- hidden_count == 6:
  All cards are face down
- else:
 The first card {hidden1: is face down | displays {slot1}}
 The second card {hidden2: is face down | displays {slot2}}
 The thirth card {hidden3: is face down | displays {slot3}}
 The fourth card {hidden4: is face down | displays {slot4}}
 The fifth card {hidden5: is face down | displays {slot5}}
 The sixth card {hidden6: is face down | displays {slot6}}
}
 
 Which card do you want to flip first?
 + {hidden1} The first
    ~ pick1 = 1
    ~ picked_img1 = slot1
 + {hidden2} The second
    ~ pick1 = 2
    ~ picked_img1 = slot2
 + {hidden3} The third
    ~ pick1 = 3
    ~ picked_img1 = slot3
 + {hidden4} The fourth
    ~ pick1 = 4
    ~ picked_img1 = slot4
 + {hidden5} The fifth
    ~ pick1 = 5
    ~ picked_img1 = slot5
 + {hidden6} The sixth
    ~ pick1 = 6
    ~ picked_img1 = slot6
    
- Ok, you picked card number {pick1}, it displays {picked_img1}

 Which card do you want to flip now?
 + {pick1 != 1 and hidden1} The first
    ~ pick2 = 1
    ~ picked_img2 = slot1
 + {pick1 != 2 and hidden2} The second
    ~ pick2 = 2
    ~ picked_img2 = slot2
 + {pick1 != 3 and hidden3} The third
    ~ pick2 = 3
    ~ picked_img2 = slot3
 + {pick1 != 4 and hidden4} The fourth
    ~ pick2 = 4
    ~ picked_img2 = slot4
 + {pick1 != 5 and hidden5} The fifth
    ~ pick2 = 5
    ~ picked_img2 = slot5
 + {pick1 != 6 and hidden6} The sixth
    ~ pick2 = 6
    ~ picked_img2 = slot6
    
- Ok, you picked card number {pick2}, it displays {picked_img2}
So you picked {picked_img1} and {picked_img2}.
{
- picked_img1 == picked_img2:
    You found a match!
    -> unhide(pick1) ->
    -> unhide(pick2) ->
-else:
    Unfornately they don't match, the cards will be covered again.
}

{
  - hidden_count > 0:
  Another round starts:
 -> Loop
 -else:
 All the cards are matched! YOU WON!
 ->END
 }

= unhide(pick)
{
    -pick == 1:
    ~ hidden1 = false
    -pick == 2:
    ~ hidden2 = false
    -pick == 3:
    ~ hidden3 = false
    -pick == 4:
    ~ hidden4 = false
    -pick == 5:
    ~ hidden5 = false
    -pick == 6:
    ~ hidden6 = false
}
~ hidden_count -= 1
    ->->
    

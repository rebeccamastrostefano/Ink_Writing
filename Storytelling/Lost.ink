
-> Arrival

=== Arrival ===

It's night time, a thin fog is around you.
You are on the side of the street, no one is here, the road is dark and quiet.
"The address is right, is it?"
You check on your phone: "Party is at 23 Groove Street, see you there"
You lift your face and big villa is in front of you, while a sign saying "23 Groove Street" lays on the ground.

"It must be right"

* Go closer to the building to check
    -> Entrance
* Call your fried to be sure
    -> Dead_phone
    
= Dead_phone
    You lift your phone up, go to the contacts and click on your friend's number.
    You're about to get your phone to your ear when it suddenly turns off.
    
    "Fuck, why didn't I charge it before coming?... So dumb"
    "Anyway, the place must be this one..."
    
    * {not Entrance} Go closer to the building to check
    ->Entrance
    * {Entrance} Knock
    -> Knock
    * {Entrance} {not Window} Pick through window
    -> Window
    * {Entrance} Try to open the door
    ->Enter
    
= Entrance
    You start to approach the house,
    You notice it looks very old and the wood of the entrance stairs and windows seems almost... rotting.
    "Does someone really live here?"
    
    You proceed towards the main door,
    a shiver makes its way up your spine. It's cold, but there's something else about this place...
    
    You arrive at the door after walking up the squeaky stairs.
    
    * Knock
    -> Knock
    * Pick through window
    -> Window
    * Try to open door
    -> Enter
    * {not Dead_phone} Call your friend to be sure
    -> Dead_phone
    
    
= Knock
    You knock at the door {three times | harder | again} ...
    
    ...
    
    Nothing...
    
    + Knock again
    -> Knock
    * {not Window} Pick through window
    -> Window
    * {not Dead_phone} Call your friend to be sure
    -> Dead_phone
    * Try to open the door
    -> Enter
   
 
= Window
    There's a window near the door, a feeble light comes out through it.
    You get closer and pick through it.
    You see a corridor, it's dark, but there are some lights here and there... you move your gaze around the hallway.
    No one is here.
    "Maybe they are all already inside"
    
    * Knock
    -> Knock
    * Try to open door
    -> Enter
    * {not Dead_phone} Call your friend to be sure
    -> Dead_phone
    
    
= Enter
    -> Inside

=== Inside ===
You push down the door handle, and to your surprise the door is unlocked.
The door slowly opens up, screeching louder and louder, until it's fully open.
You go inside and a hallway stands before you, some lights slightly light up the room.
You can see two doors at either dise of the corridor, and a bigger one right at the end in front of you.
The door at your left is slightly open, while the two other ones stay closed shut.

* Go to the door at your left
-> Living_Door
* Go to the door at your right
-> Library_door
* Go to the door at the end of the corridor
-> Main_Hall_Door

= Corridor
    You are in the corridor, you wonder which way to go next, you need to find your friends.
    + {Library_door and not Library} Go to the door at your right again
    -> Light_library
    + {not Key_1 and Library} Go back to the library and grab the book
    You go back in the library
    -> Key_1
    + {not Library_door} Go to the door at the right
    -> Library_door
    + {Key_1} Go back to the library
    You go back in the library
    -> Nothing_Here
    + {not Main_Hall_Door} Go to the door at the end of the corridor
    -> Main_Hall_Door
    + {Main_Hall_Door} Go to the door at the end of the corridor again
    -> Main_Hall
    + {not Living_Door} Go to the door at your left
    -> Living_Door
    + {Living_Door} Go back in the living room
    -> Living
    
= Library_door
    You approach the small door that stands at your right, the floor screeches under your feet.
    Arrived at the door you try to open it, and it does.
    The room is pitch black, you can't help but imagine what could lie in the darkness, the least rational thoughts make their way in your mind, and you start to shiver.
    A smell come sfrom the room, it feels... humid

    Suddenly a noise, a sharp metallic sound. It sounded like a small object hitting the ground, then rolling away.
    It might be something that you moved when opening the door, or maybe not...

    * Feel for a light switch on the side of the door
    -> Light_library
    * Close the door and move away
    -> Corridor

= Light_library
    You slide your hand on the wall near the door and try to feel if there's a light switch.
    YES! 
    You push the switch.
    The lights turn on, your eyes slowly adjust to the sudden brightness.
    When you can finally see clearly again you notice that the room appears safe, even if shabby.
    
    It's a library room, lots of old books are on the big shelves, old books, you now understand that the smell you felt was the moldy paper.
    
    No one is in here, it's just a fairly empty and small room.
    
    * Go inside and investigate
    -> Library
    * Close the door and move away
    -> Corridor

= Library 
    You walk inside the small room, you suddenly step on something. Looking down you see it's a bolt. It's probably what fell on the ground earlier.
    You feel relieved.
    
    You look at the books on the shelves, they are dusty, and the smell is now annoying you.
    At some point you realize one of the books seems newer, less dusty... it definetely stands out.
    It could be somethng dangerous...
    
    * Grab the book
    -> Key_1
    * Go back out
    -> Corridor
    
= Key_1
    While you grab the book your guts feel like they are twisting inside your stomach, you irrationaly feel like something is going to happen...
    But nothing happens...
    You let out a sigh of relief, then look at the book cover: "Enter the unknown".
    "That's... 
    * Captivating
    "That's... captivating"
    * Boring
    "That's... boring"
    * Scary
    "That's... scary"
    
    -You then open the book, to your surprise there are no actual pages, it's more like a box, and inside there's a key.
    You don't really know what it opens, but you take it, then put the book back where it was.
    
    * Keep Looking
    -> Nothing_Here
    * Go out
    -> Corridor
    
= Nothing_Here
 You look around a little more, but there is not much else that seems interesting{... |...the room is quiet |"I should probably go somewhere else"}
 + Keep Looking
 -> Nothing_Here
 + Go out
 -> Corridor
 
    
= Main_Hall_Door
    You slowly approach the big door at the end of the hallway.
    {You can hear sinister sounds around you, but you can't quite figure out their source... it sounds like something slithering slowly around, maybe water, maybe some creature? |You can still hear the slithering sounds of before, they are even louder, thinking about it makes you nauseous...}
    You arrive at the door
    * {Key_1} Try to open it
    You try to get it to open, but it's shut, you decide to use the key you found earlier and... 
    "It works!"
    -> Main_Hall
    + {not Key_1} Try to open it
    -> Try_Open
    + Go back
    -> Corridor
= Try_Open
  {You try to get the door to open but there's nothing to do, it's closed shut | You try again to open it, nothing to do...}
  + Try again
  -> Try_Open
  + Go back
  -> Corridor
  
= Main_Hall 
    {The door creaks open, a big hall stands before you, there's a statue at the center. It looks like an angel, but its eyes are covered by a cloth... "Lady Luck! The Blindfolded Goddess! That's a nice statue" | The statue is still standing there}
    Two staircases stand at the side of the marble giant, you can see they curve and meet at the end, they probably lead to the same upstairs space.
    At the sides of the room you can see two doors.
    
    + Go upstairs
    -> Second_Floor
    + {not Bedroom_Door} Go to the room at your right
    -> Bedroom_Door
    + {not Dining_Door} Go to the room at your left
    -> Dining_Door
    + {Bedroom_Door} Go to bedroom
    -> Bedroom
    + {Dining_Door} Go to the dining room
    -> Dining
    + Go back to the corridor
    -> Corridor  
  
= Living_Door
TODO
 -> END
= Living
TODO
 -> END
 

    
= Bedroom_Door
TODO
-> END
= Bedroom
TODO
-> END
= Dining_Door
TODO
-> END
= Dining
TODO
-> END
= Second_Floor
TODO
-> END

  

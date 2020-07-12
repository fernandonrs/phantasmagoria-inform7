"Phantasmagoria" by Fernando Novaes

Use American dialect, full-length room descriptions and the serial comma.

[Starting   ----------------------------------------------------------------------------------------------------------------------------------------------------- ]

When play begins:
	say "[bold type]The Phantasmagoria Game. [italic type]This is the story of Adrienne, a writer who moves with you husband Don into a remote mansion and finds herself terrorized by supernatural forces. After a month in the mansion Adrienne's husband is possessed. Now she needs to escape immediately from the mansion and find help outside.";
	now the time of day is 5:00 pm
	
[ Characters  ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
Adrienne Delaney is a woman. The description is "Adrienne is a writer and She is the player."
Don is a man. The description is " Don is the Adrienne's husband and he is a photographer."
Mr. Carno are man.The description is "Mr. Carno is a magician that lived in the mansion long time ago. He is responsible for many terrifies things has happened in past at the mansion."
The player is Adrienne Delaney.

[Floors ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
The first floor is a region. The kitchen, the food pantry, the diner and the piano room is in the first floor.
The second floor is a region. The hallway is in the second floor.

[Room  ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
The kitchen is a room.  The description is "You are seated at the table in the kitchen. Looking around You see some old fashioned furniture. You are exhausted, tired and thinking how to escape from the mansion using a secret way.[paragraph break]".
The food pantry is a room.
The diner is a room. The description is "Now you are entering in the dinner room. Although there are six large windows, the room is kind of dark. There is a long table, a huge mirror and a fireplace. You should examine those.[paragraph break]".
The secret place is a room. The description is "Its a very dark tunnel...[paragraph break]".
The piano room is a room. The description is "The piano room is large, sort of dark, old fashioned sofas around the piano and some equipment for magician on the corners of the room.".
The Hallway is a room. The description is "The hallway has six rooms and candle lanterns on the wall.".

[Drawer  ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
The matchbox is a supporter. It is inside the drawer. The description is "The metchbox will be useful when everything is dark...[paragraph break]".
The drawer is a openable closed container. 
After opening the drawer:  
	say "You found a matchbox. It will be useful in another moment.";
	now the player carries the matchbox;	
	continue the action.

[Food Pantry  ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
 The food pantry is north of the Kitchen. 
	"The Food Pantry is tight and has a closet and a red carpet on the floor. There is something under the carpet, You should examine it.[paragraph break]".
The carpet is an object. The carpet  and the closet is in the food pantry. 
The  secret access is a kind of door.  It is openable and locked.

The drawer, the food pantry entrance on north and the diner entrance on south are in the kitchen.

Before examining the carpet:
	if  the  player carries the fireplace tool: 	
		if  the  player carries the matchbox:
			if the player carries the candle lantern: [The end of the story]
				say "You can go through the secret access to scape the mansion by the secret place.";
				end the story finally;	
			otherwise:
				say "You see a very dark tunnel, but you decided keep going... after 10 minutes you used all the matches in the matchbox and realize to be lost in a kind of maze.";
				end the story saying "You failed!";	
		otherwise: [The matchbox is needed]
			say "You see a very dark tunnel, but you decided keep going... after 30 minutes walking not seeing anything, you realize to be lost in a kind of maze.";
			end the story saying "You failed!";
	otherwise: [Nothing to help go through the dark tunnel]	
		say "You found a sercret way, but the secret access to go through is locked. You need something to open it.[paragraph break]";
		continue the action;

[Diner  ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
The Diner is south of the kitchen. 
After going to diner: [By the time, you should have already taken all objects to escape]
	if Don is in the diner:
		say "Don found You. He is possessed by Mr. Carmo...  You should avoid him!!!";
		end the story saying "By the time, you should have already taken all objects to escape. You failed!";
	otherwise:
		continue the action;
		
The huge mirror, the long table, the fireplace  and the piano room entrance on west are in Diner. 
The Fireplace Tool is a supporter in the Fireplace.	
After examining the fireplace:	
	say "You found a fireplace tool. Maybe you can open something using it.[paragraph break]";
	now the player carries the fireplace tool;
	continue the action.

After examining the mirror: 
	say "Facing the mirror nothing different happened. When You turned around to the north of the diner, your image on the mirror frozen.[paragraph break]";
	continue the action;
	
After examining the table:
	say "You see a long, brown and very clean table with ten beautiful chairs.[paragraph break]";
	continue the action;

[Piano Room ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
The piano room is west of the diner.
After going to piano room:
	say "You bumped into Don... He is nervous, has red eyes and is angry. You should talk to Don.[paragraph break]";
	now Don is in the piano room;
	continue the action;
	
Before talking to Don: [Talking to Don]
	say "I will take you to.... Follow me now... I will take You to... I don't need to explain.Come on! [paragraph break]Do You follow him or push him?[paragraph break]";
	stop the action;
	
Instead of following to Don: [Follow]
	say "Don is possessed by Mr. Carmo... You shouldn't have done it!!!";
	end the story saying "You are possessed!".
		
[Hallway ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
The candle lantern is a object in the Hallway. The description is "You can lit the candle lantern and use it in the dark.[paragraph break]".

Instead of pushing Don: [Running way]
	say "Don fell down and seems to be passed out... run! Its time to run away.[paragraph break]You climbed up the stairs to second floor. Now You are in the middle of the hallway with 6 doors, none of them is opened.[paragraph break]When You turned around, You tripped over on a candle lantern.";
	now the player is in the Hallway;	
	
After taking the candle lantern:
	say "Now You have everything to escape.[paragraph break]You are going down the stairs slowly worried about Don, but He is not here any more. Now You are on first floor, look for the secret way to go outside of the mansion.[paragraph break]";
	now the player carries the candle lantern;
	now the player is in the piano room;	
	continue the action;

[ Action ----------------------------------------------------------------------------------------------------------------------------------------------------- ]
Talking to is an action applying to one visible thing. Understand "talk to [someone]" as talking to.
Check talking to: 
	say "[The noun] doesn't reply."

Following  to is an action applying to one visible thing. Understand "follow [someone]" or "follows [someone]" as following to.
[ ---------------------------------------------------------------------------------------------------------------------------------------------------------------- ]

[ Tests ]
Test go-outside-of-the-mansion with "open drawer / go N / examine closet /  examine carpet / go S / go S / examine mirror / examine table / examine fireplace / go W / talk to Don / push / examine candle lantern / take the candle lantern / go N / go N / examine carpet".

[Release]
Release along with cover art ("Phantasmagoria"), a file of "Phantasmagoria" called "Cover.png".
Release along with a website.
Release along with an interpreter.
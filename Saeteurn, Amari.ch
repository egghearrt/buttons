/*File: ChooseYourOwnAdventure.ch
What it does: allows user to interact with a choose your own adventure story*/

int introans, op1ans, op2ans, op3ans;
int n, m;
string_t nameone, nametwo, roadmap;

n=randint(0,6);
m=randint(1,10);

//allows user to view roadmap
printf("Would you like to see the roadmap? Type 1 for yes and type 2 for no.\n");
scanf("%s", &roadmap);
if(roadmap=="1"){
    printf("                       __________ Introduction __________                         \n");
    printf("                      /                |                 \\                       \n");
    printf("                     /                 |                  \\                      \n");
    printf("           cruiseship                  |                   jungle                 \n");
    printf("         /      |     \\               hill               /   |    \\             \n");        
    printf("        /       |      \\            /  |   \\            /    |     \\            \n");
    printf("      help    solo    leave        /   |    \\        climb  run   fight         \n");
    printf("       |        |       |         /    |     \\         |     |      |           \n");
    printf("    rescued    die     die      gun   fire   pass     die   die   safe          \n");
    printf("                                 |     |      |                                  \n");
    printf("                         unnoticed  rescued   rescued                           \n");
}
//introduction of story
void intro(){
    printf("Hearing the sound of birds and ocean waves, you open your eyes.\n");
    printf("Looking around, you find yourself on a beach. To the right, you see the cruiseship you were on previously before it had crashed.\n");
    printf("To the left, you see a small hill from afar.\n");
    printf("Behind you, you see a jungle.\n");
    do{
        printf("Do you choose to 1) Check the cruiseship for any survivors, 2) check out the hill, or 3) go into the jungle?\n");
        scanf("%d", &introans);
    }while(introans < 1 || introans > 3);
}
//option 1 of introduction
void option1(){    
    printf("You chose to check the cruiseship for any survivors.\n");
    printf("As you were checking the ship for any supplies, you happen to find some beef jerky, a pistol with %d bullets as well as %d matchstick(s).\n", n, m);
    printf("Suddenly you hear a few groans coming a few feet from you, it was survivors!\n");
    printf("Sprinting over you notice that there were two people in total.\n");
    printf("After you helped out the two survivors you ended up finding out their names were:\n");
    scanf("%s", &nameone);
    scanf("%s", &nametwo);
    printf("%s and %s.\n", nameone, nametwo);
    do{
        printf("Do you choose to 1) allow them to join your party and help each other out, 2) allow them to accompany you, but have them fend for themselves, or 3) leave them behind?\n");
        scanf("%d", &op1ans);
    }while(op1ans < 1 || op1ans > 3);
}

//option 2 of introduction
void option2(){
    printf("You chose to check out the hill.\n");
    printf("It was about 20 minutes in when you noticed one of the cargo from the shipwreck nearby.\n");
    printf("In it was a flare gun, some medical kits, and a bag.\n");
    printf("You took all of the supplies and stuffed them in the bag, bringing it with you on your way to the top of the hill.\n");
    printf("Finally, you reached the top of the hill which had a wide view of the ocean, surveying the sea you notice a boat passing by.\n");
    do{
        printf("Do you 1) use the flare gun to gain the boat's attention, 2) try to start a fire, or 3) let the boat pass?\n");
        scanf("%d", &op2ans);
    }while(op2ans < 1 || op2ans > 3);
}

//option 3 of introduction
void option3(){
    printf("You chose to go into the jungle.\n");
    printf("Going through the jungle, you try to search for any other paths that'll be a good place to stay at for a while.\n");
    printf("All of a sudden, you heard a low growl come from the left of you and notice that some of the leaves were moving a bit.\n");
    printf("A long tail can be seen in between the bushes of leaves and you noticed the long black and somewhat spotted tail-a panther.\n");
    printf("Out of no where the panther leaped out of the bushes and faced you, laying low and growling.\n");
    do{
        printf("Trying to get your thoughts together, you decided to 1) climb the nearest and tallest tree, 2) run away, or 3) fight back?\n");
        scanf("%d", &op3ans);
    }while(op3ans < 1 || op3ans > 3);
}
//ending 1
void op1end1(){
    printf("You chose to have %s and %s join your party.\n", nameone, nametwo);
    printf("Fortunately for you, %s happened to remember his skills from his boy scouts and was very helpful when it comes to crafts.\n", nametwo);
    printf("%s also happened to be a botanist and was able to help out with identifying which plants were poisonous and which ones were not.\n", nameone);
    printf("All three of you managed to get through three weeks on the island with no trouble.\n");
    printf("Eventually, a ship happened to pass by one morning and with teamwork, you, %s, and %s were able to send a successful smoke signal and be rescued!\n", nameone, nametwo);
}
//ending 2
void op1end2(){
    printf("You allowed %s and %s to accompany you.\n", nameone, nametwo);
    printf("Over the few days you have been ignoring and avoiding %s and %s.\n", nameone, nametwo);
    printf("Eventually they both decided to leave and survive on their own together.\n");
    printf("Without them, you had a difficult time hunting and building more supplies and tool for yourself.\n");
    printf("Within five weeks you died due to dehydration and loneliness.\n");
}
//ending 3
void op1end3(){
    printf("You decided to leave %s and %s behind.\n", nameone, nametwo);
    printf("Days passed and for the most part you were doing well, but soon you stumbled upon a group of people wearing  masks and got caught.\n");
    printf("By the time you reached their home base, you notice two familiar people, it was %s and %s!\n", nameone, nametwo);
    printf("Shouting at them for help they turned to see who called for them only to notice you, and without any hesitation they turned the other way.\n");
    printf("Their reactions left you shocked and distracted from the fact that you were sent to be executed on the spot for trespassing the tribe's land.\n");
}
//ending 4
void op2end1(){
    printf("You chose to use the flare gun.\n");
    printf("Quickly putting in the ammo needed for the gun you then shoot the gun in the sky.\n");
    printf("Looking at the long trail of red dust, you hoped that the people on the ship would see you.\n");
    printf("After about thirty seconds the flare disappeared, you stared at the boat in anticipation, expecting it to move towards you.\n");
    printf("To your dismay the boat didn't come to you at all due to the brightness of the daylight making the red flare hard to see.\n");
}
//ending 5
void op2end2(){
    printf("You tried to start a fire and send a smoke signal.\n");
    printf("In a haste, you began searching all around you for anything flammable only come across a few dry pieces of wood.\n");
    printf("Figuring that it would be good enough you then make a pile and grab a flat wood and two sticks.\n");
    printf("After successfully making the fire you then attempted to make three smoke signals to signal for an emergency.\n");
    printf("Within a few minutes you hear a loud horn coming from the ship signalling that they were on their way, you then got rescued!\n");
}
//ending 6
void op2end3(){
    printf("Doubting that anything would gain their attention, you decided to let the boat pass.\n");
    printf("Finding that the hill was a good spot to stay at for the night, you attempted to set up a campsite to retire for the day.\n");
    printf("Days go by and eventually it's been about ten weeks since the cruiseship crashed and you were still doing well on your own.\n");
    printf("One day while you were gathering sticks for your fire later on in the night, you heard a low whirring sound, turning around you spotted a helicopter landing on the coast of where the shipwreck was!\n");
    printf("Without any hesitation, you hastily ran towards where the helicopter was and soon you ended up getting rescued!\n");
}
//ending 7
void op3end1(){
    printf("You decided to climb the nearest and tallest tree.\n");
    printf("Looking around frantically you found a tree from your left and slowly made your way to it while keeping eye contact with the panther.\n");
    printf("By the time you were close enough to the tree you began to climb it at a rapid pace.\n");
    printf("Almost reaching the top of the tree, you felt a harsh tug pull on your foot and looking down you saw the panther climbing the same tree as you!\n");
    printf("Ultimately the panther caught up to you and dragged you down the tree. You died.\n");
}
//ending 8
void op3end2(){
    printf("You decided to run away.\n");
    printf("Cautiously you backed away from the large feline.\n");
    printf("As you reached the path you came from you immediately turned around and started sprinting.\n");
    printf("You were almost reaching the coast of the island until you felt a huge weight fall on top of you.\n");
    printf("Unfortunately for you, the panther was able to catch up. You died.\n");
}
//ending 9
void op3end3(){
    printf("You chose to fight back.\n");
    printf("As the panther was still keeping its stare on you, you tried to reach out towards a nearby bush.\n");
    printf("By the time you were able to get a good grip on the bush, you ripped out a few of its large leaves.\n");
    printf("Now that you had a few leaves on both sides of your hands, you stood up tall with your chest puffed out and starting shaking the leaves around.\n");
    printf("Now appearing larger to the animal, the panther then took off allowing you to continue your journey on surviving on the island.\n");
}

//function start
int main(){

intro();
if(introans==1){
    option1();
}    
if(introans==2){
    option2();
}    
if(introans==3){
    option3();
}
if(op1ans==1){
    op1end1();
}    
if(op1ans==2){
    op1end2();
}    
if(op1ans==3){
    op1end3();
}
if(op2ans==1){
    op2end1();
}
if(op2ans==2){
    op2end2();
}
if(op2ans==3){
    op2end3();
}
if(op3ans==1){
    op3end1();
}
if(op3ans==2){
    op3end2();
}
if(op3ans==3){
    op3end3();
}
}

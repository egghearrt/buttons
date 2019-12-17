/* addnumtest3.ch
gives 10 problems */

int n=10;
int t=1;
int a, b, ans, Sum, c;
while(t<=n)
{
    a=randint(1,10);
    b=randint(1,10);
    printf("What is the sum of %d and %d?\n", a, b);
    scanf("%d", &ans);
    t=t+1;
    Sum=a+b;
    if(ans==Sum){
        c=c+1;
        printf("Correct!\n");
    }else{
        printf("Sorry, that's incorrect.\n");
    }
}
if(c>8){
    printf("Good Job! You got %d questions correct!\n", c);
}else{
    printf("You got %d questions correct.\n", c);
}

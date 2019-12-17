/* File name: payment.ch
What it does: calculates gross pay */
double g, h, n, t;
printf(" Welcome to the Payment Calculator\n");
printf("Please enter the hours worked\n");
scanf("%lf", &h);
g=25*h;
t=0.3*g;
n=g-t;
printf("       Gross pay: $%.2lf\n", g);
printf("    Deducted tax: $%.2lf\n", t);
printf("         Net pay: $%.2lf\n", n);

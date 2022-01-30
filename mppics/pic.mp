input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../quad}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";



beginfig(10) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(1,0)*u;
z.c=(.4,1.1)*u;
z.d=(.55,.25)*u;

z.a1=(2,0)*u;
z.b1=(3,0)*u;
z.c1=(2.1,.9)*u;
z.d1=(2.95,1.05)*u;

draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.c;
draw z.b--z.d;

draw z.a1--z.b1--z.c1--z.d1--cycle;
draw z.a1--z.c1;
draw z.b1--z.d1;

dOt z.a,z.b,z.c,z.d,z.a1,z.b1,z.c1,z.d1;
endfig;

beginfig(15) 
save u;
u:=1.4cm;

z.a1=(2,0)*u;
z.b1=(3,0)*u;
z.c1=(2.95,1.05)*u;
z.d1=(2.1,.9)*u;
z.m=whatever[z.a1,z.c1]=whatever[z.b1,z.d1];

draw z.a1--z.b1--z.c1--z.d1--cycle;
draw z.a1--z.c1;
draw z.b1--z.d1;

dOt z.a1,z.b1,z.c1,z.d1,z.m;

label.llft (btex $v_1$ etex,  z.a1);
label.lrt (btex $v_2$ etex,  z.b1);
label.urt (btex $v_3$ etex,  z.c1);
label.ulft (btex $v_4$ etex,  z.d1);
label.rt (btex $m$ etex,  z.m);
endfig;

beginfig(20) 
save u,p;
path p[];
u:=2.8cm;

p0=(0,0)*u{1.4,-1}..(1,0)*u{.1,1}..(0,0)*u{-1.4,-1};

x1= directiontime (-1,1) of p0 ;
x0=directiontime (1,1) of p0;

z.o=(-.6,0)*u;


hatchfill p0--cycle  withcolor (20, 2mm, -.5bp);
draw p0;
draw subpath (0,x0) of p0 penbold;
draw subpath (x1,2) of p0 penbold;

draw z.o+(1,1)*u/3-- z.o-(1,1)*u/3;
draw z.o+(1,-1)*u/3-- z.o-(1,-1)*u/3;

dOt (0,0)*u, point x0 of p0, point x1 of p0;


whitelabel (btex $K$ etex, (.6,0)*u);
label.bot (btex $\Sigma^-$ etex, point x0/2 of p0);
label.top (btex $\Sigma^+$ etex, point (x1+2)/2 of p0);
label.bot (btex $C^-$ etex,  z.o-(0,8));
label.top (btex $C^+$ etex,  z.o+(0,8));
endfig;

beginfig(25) 
save u,p;
path p[];
u:=2.8cm;

p0=(0,0)*u{1.4,-1}..(1,0)*u{.1,1}..(0,0)*u{-1.4,-1};

x1= directiontime (-1,1) of p0 ;
x0=directiontime (1,1) of p0;

z.o=(-.3,0)*u;
y.top=.5*u;
z.r=whatever*(1,1)+point x0 of p0=(whatever,y.top);
z.l=whatever*(-1,1)=(whatever,y.top);

p1=point x0 of p0--z.r--z.l--(0,0)*u;


hatchfill p0--cycle  withcolor (20, 2mm, -.5bp);
draw p0;
draw subpath (0,1) of p1;
draw subpath (2,3) of p1;
draw subpath (0,x0) of p0 penbold;

hatchfill subpath (0,x0) of p0--p1--cycle  withcolor (80, 2mm, -.5bp);

z.shift=(0,-.2)*u;
draw z.r+z.shift--z.l+z.shift;

dOt (0,0)*u, point x0 of p0;


whitelabel (btex $K$ etex, (.6,0)*u);
whitelabel (btex $K^-$ etex, (0,.2)*u);
whitelabel.top (btex $\Pi$ etex, .5[z.r,z.l]+z.shift);
label.bot (btex $\Sigma^-$ etex, point x0/2 of p0);
label.bot (btex $D$ etex, point .5 of p1 +(2,0));
endfig;

beginfig(30) 
save u,p,k,a;
path p[];
u:=.4cm;
k:=1.6;
a:=1.3*u;

z0=(0,1)*u;
z1=k*z0 rotated 60;
z2=z0 rotated 120;
z3=k*z0 rotated 180;
z4=z0 rotated -120;
z5=k*z0 rotated -60;

z.shift=(-8,0)*u;

z.s0=(a,a)+z.shift;
z.s1=(a,-a)+z.shift;
z.s2=(-a,-a)+z.shift;
z.s3=(-a,a)+z.shift;

draw z.s0--z.s1--z.s2--z.s3--cycle;

draw z0..z1..z3..z4..cycle;
draw z1..z2..z4..z5..cycle;
draw z2..z3..z5..z0..cycle;
%draw z0--z2--z4--cycle;
%draw z0..z1..z3..z4..z5..z1..z2..z3..z5..z0..z1..z3..z4..z5..z1..z2..z3..z5..cycle;

dOt z0,z1,z2,z3,z4,z5;
dOt z.s0,z.s1,z.s2,z.s3;

label.bot (btex $C_4$ etex,  z3+z.shift+(0,-2));
label.bot (btex $O_3$ etex,  z3+(0,-2));
endfig;

beginfig(40) 
save u,p;
path p[];
u:=.5cm;

z.shift=(3,0)*u;
z.vert=(1.5,-3.7)*u;

z.o=origin;
z0=(0,1)*u;
z.30=z0;
z.31=z0 rotated 120;
z.32=z0 rotated -120;

draw z.o--z.30;
draw z.o--z.31;
draw z.o--z.32;

dOt z.o,z.30,z.31,z.32;

z.40= z.shift+ z0;
z.41= z.shift+ z0 rotated 90;
z.42= z.shift+ z0 rotated 180;
z.43= z.shift+ z0 rotated -90;

draw z.shift+z.o--z.40;
draw z.shift+z.o--z.41;
draw z.shift+z.o--z.42;
draw z.shift+z.o--z.43;

dOt z.shift,z.40,z.41,z.42,z.43;


z.50= 2*z.shift+ z0;
z.51= 2*z.shift+ z0 rotated (360/5);
z.52= 2*z.shift+ z0 rotated (2*360/5);
z.53= 2*z.shift+ z0 rotated (-2*360/5);
z.54= 2*z.shift+ z0 rotated (-1*360/5);

draw 2*z.shift+z.o--z.50;
draw 2*z.shift+z.o--z.51;
draw 2*z.shift+z.o--z.52;
draw 2*z.shift+z.o--z.53;
draw 2*z.shift+z.o--z.54;

dOt 2*z.shift,z.50,z.51,z.52,z.53,z.54;

z.60= 3*z.shift+ z0;
z.61= 3*z.shift+ z0 rotated (360/6);
z.62= 3*z.shift+ z0 rotated (2*360/6);
z.63= 3*z.shift+ z0 rotated (3*360/6);
z.64= 3*z.shift+ z0 rotated (-2*360/6);
z.65= 3*z.shift+ z0 rotated (-1*360/6);

draw 3*z.shift+z.o--z.60;
draw 3*z.shift+z.o--z.61;
draw 3*z.shift+z.o--z.62;
draw 3*z.shift+z.o--z.63;
draw 3*z.shift+z.o--z.64;
draw 3*z.shift+z.o--z.65;

dOt 3*z.shift,z.60,z.61,z.62,z.63,z.64,z.65;

label (btex $\dots$ etex,  4*z.shift);


z.220= z.vert+ z0 rotated -90;
z.221= z.vert+ z0 rotated -90 rotated 120;
z.222= z.vert+ z0 rotated -90 rotated -120;
z.223=z.220 + z0 rotated -90 rotated 60;
z.224=z.220 + z0 rotated -90 rotated -60;

draw z.221--z.vert;
draw z.222--z.vert--z.220--z.223;
draw z.220--z.224;

dOt z.221,z.vert,z.222,z.220,z.223,z.224;

z.314= z.vert+1.5*z.shift+ z0;
z.311= z.vert+1.5*z.shift+ z0 rotated 90;
z.312= z.vert+1.5*z.shift+ z0 rotated 180;
z.313= z.vert+1.5*z.shift+ z0 rotated -90;

draw z.vert+1.5*z.shift+z.o--z.314;
draw z.vert+1.5*z.shift+z.o--z.311;
draw z.vert+1.5*z.shift+z.o--z.312;
draw z.vert+1.5*z.shift+z.o--z.313--z.313+z0;

dOt z.vert+1.5*z.shift,z.314,z.311,z.312,z.313,z.313+z0;


label.bot (btex $3$-tree etex,  z.o+(0,-1.1)*u);
label.bot (btex $4$-tree etex,  z.shift+(0,-1.1)*u);
label.bot (btex $5$-tree etex,  2*z.shift+(0,-1.1)*u);
label.bot (btex $6$-tree etex,  3*z.shift+(0,-1.1)*u);
label.bot (btex $2(2)$-tree etex,  .5[z.vert,z.220]+(0,-1.1)*u);
label.bot (btex $3(1)$-tree etex,  z.vert+1.5*z.shift+(0,-1.1)*u);
endfig;

beginfig(720) 
save u;
u:=1cm;

z.p=(0,0)*u;
z.q=(1.5,1.3)*u;
z.x=(1,0)*u;
z.y=(-.2,1)*u;
z.z=.6[z.x,z.y];

draw z.p--z.x--z.q--z.y--cycle;
draw z.x--z.y;
draw z.p--z.z--z.q dashed evenly;

dOt z.x,z.y,z.z,z.p,z.q;

label.lrt(btex $\tilde x$ etex, z.x);
label.ulft(btex $\tilde y$ etex, z.y);
label.top(btex $\tilde z$ etex, z.z);
label.llft(btex $\tilde p$ etex, z.p);
label.urt(btex $\tilde q$ etex, z.q);
endfig;

beginfig(200) 
save u,p;
path p[];
u:=.5cm;
picture s[];

z.a=(0,1)*u;
z.b=(0,0)*u;
z.c=(0,-1)*u;
z.d=(-1,0)*u;
z.e=(1,0)*u;

draw z.a..z.b..{down}z.c..z.d..z.a..z.e..z.c;

dOt z.a,z.b,z.c,z.d,z.e;

label.top(btex $a$ etex, z.a);
label.rt(btex $b$ etex, z.b);
label.lrt(btex $c$ etex, z.c);
label.ulft(btex $d$ etex, z.d);
label.rt(btex $e$ etex, z.e);
endfig;

beginfig(201)
save u,p;
path p[];
u:=.5cm;
picture s[];

s1= image(draw circle(origin,u);
dOt (0,1)*u, (0,1)*u rotated 72, (0,1)*u rotated -72, (0,1)*u rotated 144, (0,1)*u rotated -144;);

draw s1;

s2=image(
z.a=(0,-1)*u;
z.b=(-.8,.6)*u;
z.c=(0,1)*u;
z.d=(.8,.6)*u;
z.e=(0,.2)*u;
draw z.a{-8,5}..z.b..z.c..z.d..{-8,-5}z.a;
draw z.a..z.e..z.c;
draw z.b..z.e..z.d;
dOt z.a,z.b,z.c,z.d,z.e;
);

draw s2 shifted ((3,0)*u);
endfig;

beginfig(202)
save u,p;
path p[];
u:=.5cm;
picture s[];

s1= image(draw circle(origin,u);
dOt (0,1)*u, (0,1)*u rotated 72, (0,1)*u rotated -72, (0,1)*u rotated 144, (0,1)*u rotated -144;);

draw s1;

s2=image(
z.a2=(0,-1)*u;
z.b2=(-.8,.6)*u;
z.c2=(0,1)*u;
z.d2=(.8,.6)*u;
z.e2=(0,.2)*u;
draw z.a2{-8,5}..z.b2..z.c2..z.d2..{-8,-5}z.a2;
draw z.a2..z.e2..z.c2;
draw z.b2..z.e2..z.d2;
dOt z.a2,z.b2,z.c2,z.d2,z.e2;
);

draw s2 shifted ((3,0)*u);

s3=image(
z.a3=(0,-1)*u;
z.b3=(-1,0)*u;
z.c3=(0,1)*u;
z.d3=(1,0)*u;
z.e3=(0,0)*u;
draw z.a3..z.b3..z.c3..z.d3..cycle;
draw z.a3..z.e3..z.c3;
draw z.b3..z.e3..z.d3;
dOt z.a3,z.b3,z.c3,z.d3,z.e3;
);

draw s3 shifted ((6,0)*u);

endfig;

beginfig(203)
save u,p;
path p[];
u:=.35cm;
picture s[];

s1= image(
z.a1=(1,1)*u;
z.b1=(-1,1)*u;
z.c1=(-1,-1)*u;
z.d1=(1,-1)*u;
draw z.a1..z.b1..z.c1..z.d1;
dOt z.a1,z.b1,z.c1,z.d1;

%label(btex $1$ etex, (0,0)*u);
label.urt(btex $a$ etex, z.a1);
label.ulft(btex $b$ etex, z.b1);
label.llft(btex $c$ etex, z.c1);
label.lrt(btex $d$ etex, z.d1);
);

draw s1;

s2= image(
z.a2=(0,1.4)*u;
z.b2=(-.7,0)*u;
z.c2=(0,-1.4)*u;
z.d2=(.7,0)*u;
draw z.a2..z.b2..z.c2;
draw z.c2..z.d2..z.a2;
dOt z.a2,z.b2,z.c2,z.d2;

%label(btex $2$ etex, (0,0)*u);
label.top(btex $a$ etex, z.a2);
label.lft(btex $b$ etex, z.b2);
label.bot(btex $c$ etex, z.c2);
label.rt(btex $d$ etex, z.d2);
);

draw s2 shifted ((4,0)*u);

s3= image(
z.a3=(0,1.4)*u;
z.b3=(0,0)*u;
z.c3=(0,-1.4)*u;
z.d3=(1,.7)*u;
draw z.a3..z.b3..z.c3;
draw z.b3..z.d3..z.a3;
dOt z.a3,z.b3,z.c3,z.d3;

%label(btex $3$ etex, (.7,-.7)*u);
label.top(btex $a$ etex, z.a3);
label.lft(btex $b$ etex, z.b3);
label.bot(btex $c$ etex, z.c3);
label.rt(btex $d$ etex, z.d3);
);

draw s3 shifted ((8,0)*u);

s4= image(
z.a4=(-.7,1.4)*u;
z.b4=(0,0)*u;
z.c4=(0,-1.4)*u;
z.d4=(.7,1.4)*u;
draw z.a4..z.b4{down}..z.c4;
draw z.d4..z.b4{down}..z.c4;
dOt z.a4,z.b4,z.c4,z.d4;

%label(btex $4$ etex, (.7,-.7)*u);
label.top(btex $a$ etex, z.a4);
label.rt(btex $b$ etex, z.b4);
label.bot(btex $c$ etex, z.c4);
label.top(btex $d$ etex, z.d4);
);

draw s4 shifted ((12,0)*u);

endfig;

beginfig(205)
save u,p;
path p[];
u:=.5cm;
picture s[];

z.a=(0,1)*u;
z.b=(0,0)*u;
z.c=(0,-1)*u;
z.d=(-1,0)*u;
z.e=(1,0)*u;

s1= image(
draw z.a..z.b..z.c;
draw z.d--z.b dashed evenly;
dOt z.a,z.b,z.c,z.d,z.e;

label.top(btex $a$ etex, z.a);
label.rt(btex $b$ etex, z.b);
label.bot(btex $c$ etex, z.c);
label.lft(btex $d$ etex, z.d);
label.rt(btex $e$ etex, z.e);
);

draw s1;


endfig;

beginfig(207)
save u,p;
path p[];
u:=.5cm;
picture s[];

s1= image(draw circle(origin,u);
dOt (0,1)*u, (0,1)*u rotated 72, (0,1)*u rotated -72, (0,1)*u rotated 144, (0,1)*u rotated -144;);

draw s1;
endfig;

beginfig(209)
save u,p;
path p[];
u:=.7cm;
picture s[];

z.x=origin;
z.v1=(1,0)*u;
z.v2=-1.1*z.v1;
z.w1=(.1,1)*u;
z.w2=-1.1*z.w1;

draw z.v1--z.v2;
draw z.w1--z.w2;
draw z.v1{(z.w1-z.v1) rotated -25}..z.w1;
draw z.v1{(z.w2-z.v1) rotated 25}..z.w2;
draw z.v2{(z.w1-z.v2) rotated 25}..z.w1;
draw z.v2{(z.w2-z.v2) rotated -25}..z.w2;

dOt z.x,z.v1,z.v2,z.w1,z.w2;

label.lrt(btex $\hat x$ etex, z.x);
label.rt(btex $\hat v_2$ etex, z.v1);
label.lft(btex $\hat v_1$ etex, z.v2);
label.top(btex $\hat w_1$ etex, z.w1);
label.bot(btex $\hat w_2$ etex, z.w2);

endfig;

beginfig(210) 
save u,p;
path p[];
u:=.5cm;
picture s[];

z.a=(0,1)*u;
z.b=(0,0)*u;
z.c=(0,-1)*u;
z.d=(-1,0)*u;
z.e=(1,0)*u;

s1= image(
z.a1=(-1,0)*u;
z.b1=(0,0)*u;
z.c1=(1,0)*u;
z.e1=(0,-1)*u;
z.d1=(0,1)*u;
draw z.a1..z.b1..z.c1;
draw z.d1--z.b1 dashed evenly;
dOt z.a1,z.b1,z.c1,z.d1,z.e1;

label.lrt(btex {\footnotesize $1$} etex, z.b1);
);

draw s1;

s2= image(
z.a2=(0,-1)*u rotated -45;
z.b2=z.a2 rotated -90;
z.c2=z.a2 rotated -180;
z.d2=z.a2 rotated 90;
z.e2=(0,0)*u;
draw z.a2{-1,1}..z.b2..z.c2..{-1,-1}z.d2;
draw z.a2{1,-1}..{1,1}z.d2 dashed evenly;
dOt z.a2,z.b2,z.c2,z.d2,z.e2;

label.rt(btex {\footnotesize $2$} etex, z.e2);
);

z.shift2=(4,4)*u;
draw s2 shifted z.shift2;
drawarrow ddline((0,0)*u,z.shift2)(-.4,-.4);

s3= image(
z.a3=(0,1)*u;
z.b3=(0,0)*u;
z.c3=(0,-1)*u;
z.d3=(-1,1)*u;
z.e3=(1,1)*u;
draw z.a3..z.b3..z.c3;
draw z.d3..z.a3..z.e3;
draw z.d3{down}..{right}z.b3 dashed evenly;
dOt z.a3,z.b3,z.c3,z.d3,z.e3;

label.rt(btex {\footnotesize $3$} etex, z.b3);
);

z.shift3=(4,0)*u;
draw s3 shifted z.shift3;
drawarrow ddline((0,0)*u,z.shift3)(-.4,-.4);

s4= image(
z.a4=(0,1)*u;
z.b4=(0,0)*u;
z.c4=(0,-1)*u;
z.d4=(-1,0)*u;
z.e4=(1,0)*u;
draw z.a4..z.b4..z.c4;
draw z.d4..z.b4..z.e4;
draw z.a4{left}..{down}z.d4 dashed evenly;
dOt z.a4,z.b4,z.c4,z.d4,z.e4;

label.lrt(btex {\footnotesize $4$} etex, z.b4);
);

z.shift4=(4,-4)*u;
draw s4 shifted z.shift4;
drawarrow ddline((0,0)*u,z.shift4)(-.4,-.4);

s5= image(
z.a5=(-1,-1)*u;
z.b5=(0,1)*u rotated 45;
z.c5=z.b5 rotated -90;
z.d5=(1,-1)*u;
z.e5=(0,-1)*u;
draw z.a5..z.b5..z.c5..z.d5;
draw z.a5..z.e5..z.d5;
draw z.b5..{down}z.e5 dashed evenly;
dOt z.a5,z.b5,z.c5,z.d5,z.e5;

label.rt(btex {\footnotesize $5$} etex, origin);
);

z.shift25=(4,4)*u;
draw s5 shifted (z.shift2+z.shift25);
drawarrow ddline(z.shift2,z.shift2+z.shift25)(-.4,-.4);

s6=image(
z.a6=(0,-1)*u;
z.b6=(-.9,.6)*u;
z.c6=(0,1)*u;
z.d6=(.9,.6)*u;
z.e6=(0,.2)*u;
draw z.a6{-8,5}..z.b6..z.c6..z.d6..{-8,-5}z.a6;
draw z.e6..z.c6 dashed evenly;
dOt z.a6,z.b6,z.c6,z.d6,z.e6;

label.rt(btex {\footnotesize $6$} etex, origin);
);

z.shift26=(4,0)*u;
draw s6 shifted (z.shift2+z.shift26);
drawarrow ddline(z.shift2,z.shift2+z.shift26)(-.4,-.4);

s7= image(
z.a7=(-1,-1)*u;
z.b7=(-1,.4)*u;
z.c7=(0,.4)*u;
z.d7=(0,-1)*u;
z.e7=(1,-1)*u;
draw z.a7..z.b7..z.c7..z.d7;
draw z.a7..z.d7..z.e7;
draw z.c7{2,1}..tension .75..{down}z.e7 dashed evenly;
dOt z.a7,z.b7,z.c7,z.d7,z.e7;

label.llft(btex {\footnotesize $7$} etex, origin);
);

z.shift27=(4,-4)*u;
draw s7 shifted (z.shift2+z.shift27);
drawarrow ddline(z.shift2,z.shift2+z.shift27)(-.4,-.4);
drawarrow ddline(z.shift3,z.shift2+z.shift27)(-.4,-.4);

s8= image(
z.a8=(0,1)*u;
z.b8=(0,0)*u;
z.c8=(0,-1)*u;
z.d8=(-1,.5)*u;
z.e8=(1,.5)*u;
draw z.a8..z.b8..z.c8;
draw z.d8..z.a8..z.e8;
draw z.d8..z.b8..z.e8;
draw z.c8{left}..{up}z.d8 dashed evenly;
dOt z.a8,z.b8,z.c8,z.d8,z.e8;

label.lrt(btex {\footnotesize $8$} etex, origin);
);

z.shift48=(4,0)*u;
draw s8 shifted (z.shift4+z.shift48);
drawarrow ddline(z.shift4,z.shift4+z.shift48)(-.4,-.4);
drawarrow ddline(z.shift3,z.shift4+z.shift48)(-.4,-.4);

s9= image(
z.a9=(0,-1)*u;
z.b9=(-1,0)*u;
z.c9=z.b9 rotated -60;
z.d9=z.b9 rotated -120;
z.e9=(1,0)*u;
draw z.a9{-2,1}..z.b9..z.c9..z.d9..z.e9..{-2,-1}z.a9;
draw z.b9..z.e9 dashed evenly;
dOt z.a9,z.b9,z.c9,z.d9,z.e9;

label.top(btex {\footnotesize $9$} etex, origin);
);

z.shift59=(4,0)*u;
draw s9 shifted (z.shift2+z.shift25+z.shift59);
drawarrow ddline(z.shift2+z.shift25,z.shift2+z.shift25+z.shift59)(-.4,-.4);

s10=image(
z.a10=(0,-1)*u;
z.b10=(-.9,.6)*u;
z.c10=(0,1)*u;
z.d10=(.9,.6)*u;
z.e10=(0,.2)*u;
draw z.a10{-8,5}..z.b10..z.c10..z.d10..{-8,-5}z.a10;
draw z.a10..z.e10..z.c10;
draw z.e10{left}..z.b10 dashed evenly;
dOt z.a10,z.b10,z.c10,z.d10,z.e10;

label.rt(btex {\footnotesize $10$} etex, (-1,0));
);

z.shift610=(4,0)*u;
draw s10 shifted (z.shift2+z.shift26+z.shift610);
drawarrow ddline(z.shift2+z.shift26,z.shift2+z.shift26+z.shift610)(-.4,-.4);

s11= image(
z.a11=(0,-1)*u;
z.b11=(-1,0)*u;
z.c11=(0,1)*u;
z.d11=(1,0)*u;
z.e11=(0,0)*u;
draw z.a11..z.b11..z.c11..z.d11;
draw z.a11..z.e11..z.c11;
draw z.b11..z.e11..z.d11;
draw z.a11{right}..{up}z.d11 dashed evenly;
dOt z.a11,z.b11,z.c11,z.d11,z.e11;

label.lrt(btex {\footnotesize $11$} etex, origin);
);

z.shift811=(4,4)*u;
draw s11 shifted (z.shift4+z.shift48+z.shift811);
drawarrow ddline(z.shift4+z.shift48,z.shift4+z.shift48+z.shift811)(-.4,-.4);

s12= image(
z.a12=(-1.2,0)*u;
z.b12=(0,1)*u;
z.c12=(1.2,0)*u;
z.d12=(0,0)*u;
z.e12=(0,-1)*u;
draw z.a12{1,2}..z.b12..{1,-2}z.c12;
draw z.a12..z.d12..z.c12;
draw z.a12{1,-2}..z.e12..{1,2}z.c12;
draw z.b12..z.d12..z.e12;
dOt z.a12,z.b12,z.c12,z.d12,z.e12;

label.lrt(btex {\footnotesize $12$} etex, origin);
);

z.shift812=(4,0)*u;
draw s12 shifted (z.shift4+z.shift48+z.shift812);
drawarrow ddline(z.shift4+z.shift48,z.shift4+z.shift48+z.shift812)(-.4,-.4);

s13= image(draw circle(origin,u);
dOt (0,1)*u, (0,1)*u rotated 72, (0,1)*u rotated -72, (0,1)*u rotated 144, (0,1)*u rotated -144;
label(btex {\footnotesize $13$} etex, origin);
);

z.shift913=(4,0)*u;
draw s13 shifted (z.shift2+z.shift25+z.shift59+z.shift913) pensemibold;
drawarrow ddline(z.shift2+z.shift25+z.shift59,z.shift2+z.shift25+z.shift59+z.shift913)(-.4,-.4);

s14= image(
z.a14=(0,1)*u;
z.b14=(0,.2)*u;
z.c14=(0,-.6)*u;
z.d14=(-1,0)*u;
z.e14=(1,0)*u;

draw z.a14..z.b14..{down}z.c14..z.d14..z.a14..z.e14..z.c14;
draw z.b14{right}..z.e14 dashed evenly;

dOt z.a14,z.b14,z.c14,z.d14,z.e14;
label.lft(btex {\footnotesize $14$} etex, origin);
);

z.shift1014=(4,0)*u;
draw s14 shifted (z.shift2+z.shift26+z.shift610+z.shift1014);
drawarrow ddline(z.shift2+z.shift26+z.shift610,z.shift2+z.shift26+z.shift610+z.shift1014)(-.4,-.4);

s15=image(
z.a15=(0,-1)*u;
z.b15=(-.9,.6)*u;
z.c15=(0,1)*u;
z.d15=(.9,.6)*u;
z.e15=(0,.2)*u;
draw z.a15{-8,5}..z.b15..z.c15..z.d15..{-8,-5}z.a15;
draw z.a15..z.e15..z.c15;
draw z.d15..z.e15..z.b15;
dOt z.a15,z.b15,z.c15,z.d15,z.e15;

label.lrt(btex {\footnotesize $15$} etex, (0,2));
);

z.shift1015=(4,-4)*u;
draw s15 shifted (z.shift2+z.shift26+z.shift610+z.shift1015) pensemibold;
drawarrow ddline(z.shift2+z.shift26+z.shift610,z.shift2+z.shift26+z.shift610+z.shift1015)(-.4,-.4);
drawarrow ddline(z.shift4+z.shift48+z.shift811,z.shift2+z.shift26+z.shift610+z.shift1015)(-.4,-.4);
drawarrow ddline(z.shift4+z.shift48+z.shift812,z.shift2+z.shift26+z.shift610+z.shift1015)(-.4,-.4);

s16= image(
z.a16=(0,1)*u;
z.b16=(1,0)*u;
z.c16=(0,-1)*u;
z.d16=(-1,0)*u;
z.e16=(0,0)*u;
draw z.a16..z.b16..z.c16..z.d16..cycle;
draw z.a16..z.e16..z.c16;
draw z.b16..z.e16..z.d16;
dOt z.a16,z.b16,z.c16,z.d16,z.e16;

label.lrt(btex {\footnotesize $16$} etex, origin);
);

z.shift1116=(4,0)*u;
draw s16 shifted (z.shift2+z.shift26+z.shift610+z.shift1015+z.shift1116) pensemibold;
drawarrow ddline(z.shift2+z.shift26+z.shift610+z.shift1015,z.shift2+z.shift26+z.shift610+z.shift1015+z.shift1116)(-.4,-.4);

endfig;

beginfig(301) 
save u,p;
path p[];
u:=.5cm;
picture s[];


s1= image(
z.a1=(-1,0)*u;
z.b1=(0,0)*u;
z.c1=(1,0)*u;
z.e1=(0,-1)*u;
z.d1=(0,1)*u;
draw z.a1..z.b1..z.c1;
draw z.d1--z.b1 dashed evenly;
dOt z.a1,z.b1,z.c1,z.d1,z.e1;

label.lft(btex $a$ etex, z.a1);
label.urt(btex $b$ etex, z.b1);
label.rt(btex $c$ etex, z.c1);
label.top(btex $d$ etex, z.d1);
label.bot(btex $e$ etex, z.e1);
);

draw s1;
endfig;

beginfig(302) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s2= image(
z.a2=(0,-1)*u rotated -45;
z.b2=z.a2 rotated -90;
z.c2=z.a2 rotated -180;
z.d2=z.a2 rotated 90;
z.e2=(0,0)*u;
draw z.a2{-1,1}..z.b2..z.c2..{-1,-1}z.d2;
draw z.a2{1,-1}..{1,1}z.d2 dashed evenly;
dOt z.a2,z.b2,z.c2,z.d2,z.e2;

label.llft(btex $a$ etex, z.a2);
label.ulft(btex $b$ etex, z.b2);
label.urt(btex $c$ etex, z.c2);
label.lrt(btex $d$ etex, z.d2);
label.top(btex $e$ etex, z.e2);
);

draw s2;

endfig;

beginfig(303) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s3= image(
z.a3=(0,1)*u;
z.b3=(0,0)*u;
z.c3=(0,-1)*u;
z.d3=(-1,1)*u;
z.e3=(1,1)*u;
draw z.a3..z.b3..z.c3;
draw z.d3..z.a3..z.e3;
draw z.d3{down}..{right}z.b3 dashed evenly;
dOt z.a3,z.b3,z.c3,z.d3,z.e3;

label.top(btex $a$ etex, z.a3);
label.rt(btex $b$ etex, z.b3);
label.rt(btex $c$ etex, z.c3);
label.top(btex $d$ etex, z.d3);
label.top(btex $e$ etex, z.e3);
);

draw s3;

endfig;

beginfig(304) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s4= image(
z.a4=(0,1)*u;
z.b4=(0,0)*u;
z.c4=(0,-1)*u;
z.d4=(-1,0)*u;
z.e4=(1,0)*u;
draw z.a4..z.b4..z.c4;
draw z.d4..z.b4..z.e4;
draw z.a4{left}..{down}z.d4 dashed evenly;
dOt z.a4,z.b4,z.c4,z.d4,z.e4;

label.top(btex $a$ etex, z.a4);
label.urt(btex $b$ etex, z.b4);
label.bot(btex $c$ etex, z.c4);
label.lft(btex $d$ etex, z.d4);
label.rt(btex $e$ etex, z.e4);
);

draw s4;

endfig;

beginfig(305) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s5= image(
z.a5=(-1,-1)*u;
z.b5=(0,1)*u rotated 45;
z.c5=z.b5 rotated -90;
z.d5=(1,-1)*u;
z.e5=(0,-1)*u;
draw z.a5..z.b5..z.c5..z.d5;
draw z.a5..z.e5..z.d5;
draw z.b5..{down}z.e5 dashed evenly;
dOt z.a5,z.b5,z.c5,z.d5,z.e5;

label.llft(btex $a$ etex, z.a5);
label.ulft(btex $b$ etex, z.b5);
label.urt(btex $c$ etex, z.c5);
label.lrt(btex $d$ etex, z.d5);
label.bot(btex $e$ etex, z.e5);
);

draw s5;

endfig;

beginfig(306) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s6=image(
z.a6=(0,-1)*u;
z.b6=(-.9,.6)*u;
z.c6=(0,1)*u;
z.d6=(.9,.6)*u;
z.e6=(0,.2)*u;
draw z.a6{-8,5}..z.b6..z.c6..z.d6..{-8,-5}z.a6;
draw z.e6..z.c6 dashed evenly;
dOt z.a6,z.b6,z.c6,z.d6,z.e6;

label.bot(btex $a$ etex, z.a6);
label.ulft(btex $b$ etex, z.b6);
label.top(btex $c$ etex, z.c6);
label.urt(btex $d$ etex, z.d6);
label.bot(btex $e$ etex, z.e6);
);

draw s6;

endfig;

beginfig(307) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s7= image(
z.a7=(-1,-1)*u;
z.b7=(-1,.4)*u;
z.c7=(0,.4)*u;
z.d7=(0,-1)*u;
z.e7=(1,-1)*u;
draw z.a7..z.b7..z.c7..z.d7;
draw z.a7..z.d7..z.e7;
draw z.c7{2,1}..tension .75..{down}z.e7 dashed evenly;
dOt z.a7,z.b7,z.c7,z.d7,z.e7;

label.bot(btex $a$ etex, z.a7);
label.top(btex $b$ etex, z.b7);
label.top(btex $c$ etex, z.c7);
label.bot(btex $d$ etex, z.d7);
label.bot(btex $e$ etex, z.e7);
);

draw s7;

endfig;

beginfig(255) 
save u,p;
path p[];
u:=1cm;
picture s[];

z.x=origin;
z.v1=(1,0)*u;
z.v2=-1.2*z.v1;
z.w1=(.2,1)*u;
z.w2=-.9*z.w1;
z.s=.5[z.w2,.5*z.v1];
z.m=.5[z.v2,z.s];
z.l=z.m+(z.s-z.v2) zscaled (0,1.4);
z.r=z.m+(z.s-z.v2) zscaled (0,-.7);
z.w21 =z.w1 reflectedabout(z.r, z.l);
z.w22 =z.w2 reflectedabout(z.r, z.l);

draw z.v1--z.v2;
draw z.w1--z.w2;
draw z.w1--z.s--z.w2 dashed evenly;
draw z.l--z.r;
draw z.w21--z.v2--z.w22;

dOt z.x, z.v1, z.v2, z.w1, z.w2, z.s, z.w21, z.w22;

label.ulft(btex $\tilde x$ etex, z.x);
label.rt(btex $\tilde v_1$ etex, z.v1);
label.lft(btex $\tilde v_2$ etex, z.v2);
label.urt(btex $\tilde w_1$ etex, z.w1);
label.bot(btex $\tilde w_2$ etex, z.w2);
label.top(btex $\tilde w_{21}$ etex, z.w21);
label.bot(btex $\tilde w_{22}$ etex, z.w22);
label.rt(btex $\tilde s$ etex, z.s);
label.llft(btex $\ell$ etex, z.r);
endfig;

beginfig(308) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s8= image(
z.a8=(0,1)*u;
z.b8=(0,0)*u;
z.c8=(0,-1)*u;
z.d8=(-1,.5)*u;
z.e8=(1,.5)*u;
draw z.a8..z.b8..z.c8;
draw z.d8..z.a8..z.e8;
draw z.d8..z.b8..z.e8;
draw z.c8{left}..{up}z.d8 dashed evenly;
dOt z.a8,z.b8,z.c8,z.d8,z.e8;

label.top(btex $a$ etex, z.a8);
label.urt(btex $b$ etex, z.b8);
label.bot(btex $c$ etex, z.c8);
label.lft(btex $d$ etex, z.d8);
label.rt(btex $e$ etex, z.e8);
);

draw s8;

endfig;

beginfig(309) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s9= image(
z.a9=(0,-1)*u;
z.b9=(-1,0)*u;
z.c9=z.b9 rotated -60;
z.d9=z.b9 rotated -120;
z.e9=(1,0)*u;
draw z.a9{-2,1}..z.b9..z.c9..z.d9..z.e9..{-2,-1}z.a9;
draw z.b9..z.e9 dashed evenly;
dOt z.a9,z.b9,z.c9,z.d9,z.e9;

label.bot(btex $a$ etex, z.a9);
label.lft(btex $b$ etex, z.b9);
label.ulft(btex $c$ etex, z.c9);
label.urt(btex $d$ etex, z.d9);
label.rt(btex $e$ etex, z.e9);
);

draw s9;

endfig;

beginfig(310) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s10=image(
z.a10=(0,-1)*u;
z.b10=(-.9,.6)*u;
z.c10=(0,1)*u;
z.d10=(.9,.6)*u;
z.e10=(0,.2)*u;
draw z.a10{-8,5}..z.b10..z.c10..z.d10..{-8,-5}z.a10;
draw z.a10..z.e10..z.c10;
draw z.e10{left}..z.b10 dashed evenly;
dOt z.a10,z.b10,z.c10,z.d10,z.e10;

label.bot(btex $a$ etex, z.a10);
label.ulft(btex $b$ etex, z.b10);
label.top(btex $c$ etex, z.c10);
label.urt(btex $d$ etex, z.d10);
label.rt(btex $e$ etex, z.e10);
);

draw s10;

endfig;

beginfig(311) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s11= image(
z.a11=(0,-1)*u;
z.b11=(-1,0)*u;
z.c11=(0,1)*u;
z.d11=(1,0)*u;
z.e11=(0,0)*u;
draw z.a11..z.b11..z.c11..z.d11;
draw z.a11..z.e11..z.c11;
draw z.b11..z.e11..z.d11;
draw z.a11{right}..{up}z.d11 dashed evenly;
dOt z.a11,z.b11,z.c11,z.d11,z.e11;

label.bot(btex $a$ etex, z.a11);
label.lft(btex $b$ etex, z.b11);
label.top(btex $c$ etex, z.c11);
label.rt(btex $d$ etex, z.d11);
label.lrt(btex $e$ etex, z.e11);
);

draw s11;

endfig;

beginfig(312) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s12= image(
z.a12=(-1.2,0)*u;
z.b12=(0,1)*u;
z.c12=(0,0)*u;
z.d12=(0,-1)*u;
z.e12=(1.2,0)*u;
draw z.a12{1,2}..z.b12..{1,-2}z.e12;
draw z.a12..z.c12..z.e12;
draw z.a12{1,-2}..z.d12..{1,2}z.e12;
draw z.b12..z.c12..z.d12;
dOt z.a12,z.b12,z.c12,z.d12,z.e12;

label.lft(btex $a$ etex, z.a12);
label.top(btex $b$ etex, z.b12);
label.lrt(btex $c$ etex, z.c12);
label.bot(btex $d$ etex, z.d12);
label.rt(btex $e$ etex, z.e12);
);

draw s12;

endfig;

beginfig(313) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s13= image(draw circle(origin,u);
z.a13=(0,1)*u;
z.b13=(0,1)*u rotated -72;
z.c13=(0,1)*u rotated -144;
z.d13=(0,1)*u rotated 144;
z.e13=(0,1)*u rotated 72;

dOt (0,1)*u, (0,1)*u rotated 72, (0,1)*u rotated -72, (0,1)*u rotated 144, (0,1)*u rotated -144;

label.top(btex $a$ etex, z.a13);
label.rt(btex $b$ etex, z.b13);
label.lrt(btex $c$ etex, z.c13);
label.llft(btex $d$ etex, z.d13);
label.lft(btex $e$ etex, z.e13);
);


draw s13;

endfig;

beginfig(314) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s14= image(
z.a14=(0,1)*u;
z.b14=(0,.2)*u;
z.c14=(0,-.6)*u;
z.d14=(-1,0)*u;
z.e14=(1,0)*u;

draw z.a14..z.b14..{down}z.c14..z.d14..z.a14..z.e14..z.c14;
draw z.b14{right}..z.e14 dashed evenly;

dOt z.a14,z.b14,z.c14,z.d14,z.e14;

label.top(btex $a$ etex, z.a14);
label.lft(btex $b$ etex, z.b14);
label.lrt(btex $c$ etex, z.c14);
label.lft(btex $d$ etex, z.d14);
label.rt(btex $e$ etex, z.e14);
);

draw s14;

endfig;

beginfig(315) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s15=image(
z.a15=(0,-1)*u;
z.b15=(-.9,.6)*u;
z.c15=(0,1)*u;
z.d15=(.9,.6)*u;
z.e15=(0,.2)*u;
draw z.a15{-8,5}..z.b15..z.c15..z.d15..{-8,-5}z.a15;
draw z.a15..z.e15..z.c15;
draw z.d15..z.e15..z.b15;
dOt z.a15,z.b15,z.c15,z.d15,z.e15;


label.bot(btex $a$ etex, z.a15);
label.ulft(btex $b$ etex, z.b15);
label.top(btex $c$ etex, z.c15);
label.urt(btex $d$ etex, z.d15);
label.lrt(btex $e$ etex, z.e15);
);


draw s15;

endfig;

beginfig(316) 
save u,p;
path p[];
u:=.5cm;
picture s[];

s16= image(
z.a16=(0,1)*u;
z.b16=(1,0)*u;
z.c16=(0,-1)*u;
z.d16=(-1,0)*u;
z.e16=(0,0)*u;
draw z.a16..z.b16..z.c16..z.d16..cycle;
draw z.a16..z.e16..z.c16;
draw z.b16..z.e16..z.d16;
dOt z.a16,z.b16,z.c16,z.d16,z.e16;


label.top(btex $a$ etex, z.a16);
label.rt(btex $b$ etex, z.b16);
label.bot(btex $c$ etex, z.c16);
label.lft(btex $d$ etex, z.d16);
label.lrt(btex $e$ etex, z.e16);
);

draw s16;
endfig;

beginfig(351)
save u,p;
path p[];
u:=1cm;
picture s[];

z.x=origin;
z.v1=(1,0)*u;
z.v2=-1.1*z.v1;
z.w1=(.1,1)*u;
z.w2=-1.1*z.w1;
z.z1=(-.3,.3)*u;
z.z2=(.3,.3)*u;

draw z.v1--z.v2;
draw z.w1--z.x;
draw z.v1{(z.w1-z.v1) rotated -25}..z.w1;
%draw z.v1{(z.w2-z.v1) rotated 25}..z.w2;
draw z.v2{(z.w1-z.v2) rotated 25}..z.w1;
%draw z.v2{(z.w2-z.v2) rotated -25}..z.w2;
draw z.v2{1,.4}...{1,-.4}z.v1 penbold;

dOt z.x,z.v1,z.v2,z.w1,z.z1,z.z2;

label.bot(btex $\hat x$ etex, z.x);
label.rt(btex $\hat v_2$ etex, z.v1);
label.lft(btex $\hat v_1$ etex, z.v2);
label.top(btex $\hat w_1$ etex, z.w1);
whitelabel.top(btex $\hat z_1$ etex, z.z1);
whitelabel.top(btex $\hat z_2$ etex, z.z2);


endfig;

beginfig(352)
save u,p;
path p[];
u:=1cm;
picture s[];

z.x=origin;
z.v1=(1,0)*u;
z.v2=-1.1*z.v1;
z.w1=(.1,1)*u;
z.w2=-1.1*z.w1;
z.z1=(-.3,.3)*u;
z.z2=(.3,.3)*u;

draw z.v1--z.v2;
draw z.w1--z.x;
draw z.v1{(z.w1-z.v1) rotated -25}..z.w1;
%draw z.v1{(z.w2-z.v1) rotated 25}..z.w2;
draw z.v2{(z.w1-z.v2) rotated 25}..z.w1;
%draw z.v2{(z.w2-z.v2) rotated -25}..z.w2;
draw z.v2{1,1.2}...(.7[z.x,z.w1])...{1,-1.2}z.v1 penbold;

dOt z.x,z.v1,z.v2,z.w1,z.z1,z.z2;

label.bot(btex $\hat x$ etex, z.x);
label.rt(btex $\hat v_2$ etex, z.v1);
label.lft(btex $\hat v_1$ etex, z.v2);
label.top(btex $\hat w_1$ etex, z.w1);
whitelabel.top(btex $\hat z_1$ etex, z.z1);
whitelabel.top(btex $\hat z_2$ etex, z.z2);


endfig;

beginfig(353)
save u,p;
path p[];
u:=1cm;
picture s[];

z.x=origin;
z.v1=(1,0)*u;
z.v2=-1.1*z.v1;
z.w1=(.1,1)*u;
z.w2=-1.1*z.w1;
z.z1=(-.3,.3)*u;
z.z2=(.3,.3)*u;

draw z.v1--z.v2;
draw z.w1--z.x;
draw z.v1{(z.w1-z.v1) rotated -25}..z.w1;
%draw z.v1{(z.w2-z.v1) rotated 25}..z.w2;
draw z.v2{(z.w1-z.v2) rotated 25}..z.w1;
%draw z.v2{(z.w2-z.v2) rotated -25}..z.w2;
draw z.v2{1,.4}..{1,3}(.4[z.x,z.w1]){1,3}..{1,-1.2}z.v1 penbold;

dOt z.x,z.v1,z.v2,z.w1,z.z1,z.z2;

label.bot(btex $\hat x$ etex, z.x);
label.rt(btex $\hat v_2$ etex, z.v1);
label.lft(btex $\hat v_1$ etex, z.v2);
label.top(btex $\hat w_1$ etex, z.w1);
whitelabel.top(btex $\hat z_1$ etex, z.z1);
whitelabel.top(btex $\hat z_2$ etex, z.z2);


endfig;

beginfig(354)
save u,p;
path p[];
u:=1cm;
picture s[];

z.x=origin;
z.v1=(1,0)*u;
z.v2=-1.1*z.v1;
z.w1=(.1,1)*u;
z.w2=-1.1*z.w1;
z.z1=(-.3,.3)*u;
z.z2=(.3,.3)*u;

draw z.v1--z.v2;
draw z.w1--z.x;
draw z.v1{(z.w1-z.v1) rotated -25}..z.w1;
%draw z.v1{(z.w2-z.v1) rotated 25}..z.w2;
draw z.v2{(z.w1-z.v2) rotated 25}..z.w1;
%draw z.v2{(z.w2-z.v2) rotated -25}..z.w2;
draw z.v2{1,1.2}..{1,-3}(.4[z.x,z.w1]){1,-3}..{1,-.4}z.v1 penbold;

dOt z.x,z.v1,z.v2,z.w1,z.z1,z.z2;

label.bot(btex $\hat x$ etex, z.x);
label.rt(btex $\hat v_2$ etex, z.v1);
label.lft(btex $\hat v_1$ etex, z.v2);
label.top(btex $\hat w_1$ etex, z.w1);
whitelabel.top(btex $\hat z_1$ etex, z.z1);
whitelabel.top(btex $\hat z_2$ etex, z.z2);


endfig;

beginfig(401) 
save u,p;
path p[];
u:=1cm;
picture s[];

z1=(0,0)*u;
z2=(1,0)*u;
z3=(1,1)*u;
z4=(0,1)*u;
z.shift=(2.5,0)*u;

s0=image(
draw z1--z2--z3--z4--cycle;
draw z1--z3;
draw z2--z4;
dOt z1,z2,z3,z4;
);

s1=image(
draw z1--z2--z3--z4--cycle;
draw z1--z3;
dOt z1,z2,z3,z4;
);

s2=image(
draw z1--z2--z3--z4--cycle;
dOt z1,z2,z3,z4;
);

s3=image(
draw z1--z2--z3--cycle;
dOt z1,z2,z3,z4;
);

draw s0;
draw s1 shifted (1*z.shift);
draw s2 shifted (2*z.shift);
draw s3 shifted (3*z.shift);
endfig;

beginfig(501)
save u,p;
path p[];
u:=.5cm;
picture s[];

s1= image(draw circle(origin,u);
dOt (0,1)*u, (0,1)*u rotated 90, (0,1)*u rotated -90, (0,1)*u rotated 180;
);

draw s1;

s2=image(
z.a2=(0,-1)*u;
z.b2=(-.8,.6)*u;
z.c2=(0,1)*u;
z.d2=(.8,.6)*u;
draw z.a2{-8,5}..z.b2..z.c2..z.d2..{-8,-5}z.a2;
dOt z.a2,z.b2,z.c2,z.d2;
);

draw s2 shifted ((3,0)*u);
endfig;

beginfig(510)
save u,p,h;
path p[];
u:=1cm;
h=.25*u;

z.s=origin;
z.x1=(.3,1)*u;
z.x2=(1,-.6)*u;
z.x3=(-1.2,-.7)*u;
z.p=(-.2,-.3)*u;

p0=ellipseFFP(z.s, z.p, z.s + (unitvector(z.p-z.s) zscaled (0,1))*h*2);
p1=ellipseFFP(z.s, z.x1, z.s + (unitvector(z.x1-z.s) zscaled (0,1))*h);
p2=ellipseFFP(z.s, z.x2, z.s + (unitvector(z.x2-z.s) zscaled (0,1))*h);
p3=ellipseFFP(z.s, z.x3, z.s + (unitvector(z.x3-z.s) zscaled (0,1))*h);

z.l1=point directiontime (-1,0) of p1 of p1;
z.ll=z.l1+(-2,0)*u;
z.lr=z.l1+(1,0)*u;
z.q1=z.l1+unitvector(z.l1-z.x1)*abs(z.l1-z.s);

draw p0;
draw p1;
draw p2;
draw p3;
draw z.ll--z.lr;

dOt z.s,z.p,z.x1,z.x2,z.x3,z.q1;

whitelabel.lft(btex $\tilde p$ etex, z.p+(-1,0));
whitelabel.rt(btex $\tilde s$ etex, z.s+(1,0));
label.top(btex $x_1$-plane etex, .5[z.ll,z.lr]);
label.rt(btex $\tilde q_1$ etex, z.q1);
label.bot(btex $\tilde x_1$ etex, z.x1);
label.ulft(btex $\tilde x_2$ etex, z.x2);
label.urt(btex $\tilde x_3$ etex, z.x3);
label.bot(btex $P$ etex, point .5 of p0);
label.rt(btex $X_1$ etex, point 3 of p1);
label.bot(btex $X_2$ etex, point 3.5 of p2);
label.bot(btex $X_3$ etex, point .5 of p3);
endfig;

beginfig(520)
save u,p,h;
path p[];
u:=1cm;
h=.25*u;

z.s=origin;
z.x1=(.3,1)*u;
z.x2=(1,-.6)*u;
z.x3=(-1.2,-.7)*u;
z.p=(-.2,-.3)*u;

p0=ellipseFFP(z.s, z.p, z.s + (unitvector(z.p-z.s) zscaled (0,1))*h*2);
p1=ellipseFFP(z.s, z.x1, z.s );
p2=ellipseFFP(z.s, z.x2, z.s );
p3=ellipseFFP(z.s, z.x3, z.s );


draw p0;
draw p1;
draw p2;
draw p3;

dOt z.s,z.p,z.x1,z.x2,z.x3;

label.rt(btex $\tilde p$ etex, z.p+(-1,0));
label.ulft(btex $\tilde s$ etex, z.s+(1,0));
label.rt(btex $\tilde x_1$ etex, z.x1);
label.bot(btex $\tilde x_2$ etex, z.x2);
label.bot(btex $\tilde x_3$ etex, z.x3);
endfig;

beginfig(530)
save u,p,h;
path p[];
u:=1cm;
h=.25*u;


z.x1=(.3,1)*u;
z.x2=(1,-.6)*u;
z.x3=(-1.2,-.7)*u;
z.p=(-.2,-.3)*u;
z.s=.6[z.x1,z.x2];

p0=ellipseFFP(z.s, z.p, z.s + (unitvector(z.p-z.s) zscaled (0,1))*h*2);
p1=ellipseFFP(z.s, z.x1, z.s);
p2=ellipseFFP(z.s, z.x2, z.s);
p3=ellipseFFP(z.s, z.x3, z.s+ (unitvector(z.x3-z.s) zscaled (0,1))*h);


draw p0;
draw p1;
draw p2;
draw p3;

dOt z.s,z.p,z.x1,z.x2,z.x3;

label.rt(btex $\tilde p$ etex, z.p+(-1,0));
label.lft(btex $\tilde s$ etex, z.s+(1,0));
label.rt(btex $\tilde x_1$ etex, z.x1);
label.bot(btex $\tilde x_2$ etex, z.x2);
label.rt(btex $\tilde x_3$ etex, z.x3);
endfig;

beginfig(540)
save u,p,h;
path p[];
u:=1cm;
h=.25*u;


z.x1=(.3,1)*u;
z.x2=(1,-.6)*u;
z.x3=(-1.2,-.7)*u;
z.p=(-.2,-.3)*u;
z.s=.6[z.x1,z.x2];
z.t=(1,-.2)*u;

p0=ellipseFFT(z.s, z.p, z.x1, z.t);
p1=ellipseFFP(z.s, z.x1, z.s);
p2=ellipseFFP(z.s, z.x2, z.s);
p3=ellipseFFT(z.s, z.x3, z.x1, z.t);


draw p0;
draw p1;
draw p2;
draw p3;

dOt z.s,z.p,z.x1,z.x2,z.x3;

label.rt(btex $\tilde p$ etex, z.p+(-1,0));
label.lft(btex $\tilde s$ etex, z.s+(1,0));
label.rt(btex $\tilde x_1$ etex, z.x1);
label.bot(btex $\tilde x_2$ etex, z.x2);
label.rt(btex $\tilde x_3$ etex, z.x3);
endfig;

end

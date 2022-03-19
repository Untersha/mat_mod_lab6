model Lab6_2
  parameter Real a = 0.01;
  parameter Real b = 0.02;
  parameter Real N = 10800;
  parameter Real I0= 208;
  parameter Real S0= 10551;
  parameter Real R0= 41;
  
  Real S(start = S0);
  Real I(start = I0);
  Real R(start = R0);
equation
// случай, когда I(0)<=I* 
/* 
  der(S) = 0;
  der(I) = -b*I;
  der(R) = b*I;
*/ // случай, когда I(0)>I*
  der(S) = -a*S;
  der(I) = a*S - b*I;
  der(R) = b*I;

end Lab6_2;

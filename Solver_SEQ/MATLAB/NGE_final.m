A=[10, 5, 6; 2, 5, 4; 1, 3, 5];
B=[7, 8, 10];

factor=A(2, 1)/A(1, 1);         % Starting of Forward Elimination
A(2, :)=A(2, :)-factor*A(1, :); % R2=R2-factor*R1
B(2)=B(2)-factor*B(1);
 
factor=A(3, 1)/A(1, 1);         
A(3, :)=A(3, :)-factor*A(1, :); % R3=R3-factor*R1
B(3)=B(3)-factor*B(1);
 
factor=A(3, 2)/A(2, 2);
A(3, 2)=A(3, 2)-factor*A(2, 2); 
A(3, 3)=A(3, 3)-factor*A(2, 3); % R3=R3-factor*R2
B(3)=B(3)-factor*B(2);
 
x(3)=B(3)/A(3, 3);              %Back Substitution

sum=B(2);
sum=sum-A(2, 3)*X(3);
x(2)=sum/A(2, 2);               
 
sum=B(1);
sum=sum-A(1, 3)*X(3);
sum=sum-A(1, 2)*X(2);
x(1)=sum/A(1, 1);

X=[x(1); x(2); x(3)]            %Output Matrix
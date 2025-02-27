function out=Lagrange_2nd(X, Y, xx)
L(1)=(xx-X(2))*(xx-X(3))/((X(1)-X(2))*(X(1)-X(3)));
L(2)=(xx-X(3))*(xx-X(1))/((X(2)-X(3))*(X(2)-X(1)));
L(3)=(xx-X(1))*(xx-X(2))/((X(3)-X(1))*(X(3)-X(2)));
out=Y(1)*L(1)+Y(2)*L(2)+Y(3)*L(3);
end

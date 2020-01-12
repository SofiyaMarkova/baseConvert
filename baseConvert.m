%Sofiya Markova 

%goal of code: 

%Part A: convert a positive decimal integer into its representation in another base
%Part B: check that the number is correct by converting back to decimal


function [newNumber]=baseConvert (inputNumber,newBase)
 
 %part A
 
 %save variable so have check in part B that conversion is correct
 originalNumber = inputNumber;
 
 %vector to store remainders as answer to base conversion
 MyRems = [];
 
 %start vector at index 1 [matlab starts index at 1]
 k=1;
 
 %loop while the quotient not 0. means there is still amount of newBase
 %that can be divided
 while inputNumber ~= 0
     
     %save remainders into MyRems vector, changing index to add to the next
     %available index by incrementing k
      MyRems(k)=rem(inputNumber, newBase);
      
      %loop to get quotient and keep dividing that quotient. floor() keeps
      %just integer value (not rounded)
      inputNumber = floor(inputNumber/newBase);
         
      %incrementing k
      k=k+1;
      
  
 end
 
 
 %flips MyRems vector b/c new base is the mirror of MyRems saved.
 B = fliplr(MyRems);
 
 %display B, which is flip of MyRems, as the inputNumber written in newBase
 display(B);
 
 
 
 %part B
 
 %set variables to 0 as start
 Num = 0;
 counter = 0;
 
 
 %loop full array MyRems as use each number and multiply by appropriate
 %power of newbase
for k = 1:length(MyRems)

    
    %number to add created
    checkNum= MyRems(k) * (newBase^counter); 
       
    %add to building number
    Num= Num + checkNum;  
    
    %counter to go through all appropriate powers
    counter =counter +1;
end

%display
display(Num);


%check if the originalNumber inputed is same as calculated based on
%conversion
if Num == originalNumber
    display ("conversion is correct");
else
   display ("error in conversion");
end


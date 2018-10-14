import std.stdio;
// cerner_2^5_2018
int main(string[] args) {  
   uint a = 2;   
   uint b = 5; 
   int c = 0;  
   
   c = a & b;       
   writefln("%d & %d is %d\n", a, b, c ); 
   
   c = a | b;       
   writefln("%d | %d is %d\n", a, b, c );
   
   c = a ^ b;       
   writefln("%d ^ %d is %d\n", a, b, c ); 
   
   c = ~a;          
   writefln("~%d is %d\n", a, c );  
   
   c = a << 2;     
   writefln("%d << 2 is %d\n", a, c );
   
   c = a >> 2;     
   writefln("%d >> 2 is %d\n", a, c );
   
   return 0; 
}
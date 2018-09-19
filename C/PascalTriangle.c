void printPascal(int n) 
{ 
    for (int line = 1; line <= n; line++) 
    { 
        int C = 1;
        for (int i = 1; i <= line; i++)  
        { 
            printf("%d ", C); 
            C = C * (line - i) / i;  
        } 
        printf("\n"); 
    } 
}
//Print pascal's triangle with first n lines
// cerner_2^5_2018
int main() 
{ 
    int n;
    printf("Please input an integer value: ");
    scanf("%d", &n);
    printPascal(n); 
    return 0; 
} 

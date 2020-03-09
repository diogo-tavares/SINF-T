#include <stdio.h>
#include <unistd.h>

int main() {
  
    // Creating first child 
    pid_t id1 = fork(); 

    // Creating second child. First child 
    // also executes this line and creates 
    // grandchild. 
    pid_t id2 = fork(); 
    
    if (id1 > 0 && id2 > 0){ // parent
        printf("parent\n"); 
        printf("%d %d \n", id1, id2); 
        printf(" my id is %d \n\n", getpid()); 
    } 
    else if (id1 == 0 && id2 > 0){ // first child
        printf("First child\n"); 
        printf("%d %d \n", id1, id2); 
        printf("my id is %d  \n\n", getpid()); 
    } 
    else if (id1 > 0 && id2 == 0){ // second child
        printf("Second child\n"); 
        printf("%d %d \n", id1, id2); 
        printf("my id is %d  \n\n", getpid()); 
    } 
    else{  // third child
        printf("third child\n"); 
        printf("%d %d \n", id1, id2); 
        printf(" my id is %d \n\n", getpid()); 
    } 
    
    return 0; 
}

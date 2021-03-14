#include <stdio.h>
#include <stdlib.h>
#include <pthread.h> 
#include <unistd.h>

#define PHILOSOPHERS 5 

#define MAX_MEALS 10
#define MAX_THINK_EAT_SEC 3

#define LEFT ((int)phnum + PHILOSOPHERS - 1) % PHILOSOPHERS 
#define RIGHT ((int)phnum + 0) % PHILOSOPHERS 

double think_eat_time(void);
void think(double think_time);
void eat(double eat_time);
static void *philosopher(void* phnum);

pthread_mutex_t chopstick[PHILOSOPHERS];    // locks for chopsticks
int meals_eaten[PHILOSOPHERS];   //number of meals eaten by each philosopher
int number_iterations; 


int main(int argc, char *argv[]){
    pthread_t philosophers[PHILOSOPHERS];
    int i;

    if (argc != 2){
        fprintf(stderr, "use: %s <run time>\n", argv[0]);
        exit(1);          
    }
         
    double run_time = atof(argv[1]);     //set command line argument value to variable run_time;
     
    for (i=0; i < PHILOSOPHERS; i++){
        pthread_mutex_init(&chopstick[i], NULL);    // initialize chopstick mutex locks
        meals_eaten[i]=0; // initialize meals eaten
    }

    for (i=0; i < PHILOSOPHERS; i++)   // join the threads
        pthread_join(philosophers[i], NULL);

    for (i=0; i < PHILOSOPHERS; i++) {  // initialize and run philosopher threads
        pthread_create(&philosophers[i], NULL, philosopher, (void*) i);
     }

    sleep(run_time);

    for(i = 0; i < PHILOSOPHERS; i++){
        pthread_cancel(philosophers[i]);
    }

    for(i = 0; i < PHILOSOPHERS; i++){   //print the number of meals that each philosopher ate
            printf("Philosopher %d: %d meals\n", i+1, meals_eaten[i]);
    }
    
    return 0;
}


double think_eat_time(void){
    return ((double)rand() * (MAX_THINK_EAT_SEC - 1)) / (double)RAND_MAX + 1;
}

void think(double think_time){
    sleep(think_time);
}

void eat(double eat_time){
    sleep(eat_time);
}

static void *philosopher(void* phnum){
    int i;
    const char *padding="  ";
    
    while(1){
        printf("%*sPhilosopher %d is thinking\n", 2*((int)phnum+1), padding, (int)phnum+1); 
        think(think_eat_time());    // think for a while

        printf("%*sPhilosopher %d is Hungry\n", 2*((int)phnum+1), padding, (int)phnum + 1);
        if(LEFT>RIGHT){ // picks up the higher number chopstick first
            pthread_mutex_lock(&chopstick[LEFT]);    // get left chopstick
            printf("%*sPhilosopher %d takes left chopstick\n", 2*((int)phnum+1), padding, (int)phnum+1); 
            pthread_mutex_lock(&chopstick[RIGHT]);   // get right chopstick
            printf("%*sPhilosopher %d takes right chopstick\n", 2*((int)phnum+1), padding, (int)phnum+1);
        } else{
            pthread_mutex_lock(&chopstick[RIGHT]);   // get right chopstick
            printf("%*sPhilosopher %d takes right chopstick\n", 2*((int)phnum+1), padding, (int)phnum+1);
            pthread_mutex_lock(&chopstick[LEFT]);    // get left chopstick
            printf("%*sPhilosopher %d takes left chopstick\n", 2*((int)phnum+1), padding, (int)phnum+1); 
        }
        
        printf("%*sPhilosopher %d is Eating meal %d\n", 2*((int)phnum+1), padding, (int)phnum + 1, ++meals_eaten[(int)phnum]); 
        eat(think_eat_time());   // eat for a while


        pthread_mutex_unlock(&chopstick[LEFT]);    // release left chopstick
        printf("%*sPhilosopher %d puts down left chopstick\n", 2*((int)phnum+1), padding, (int)phnum+1); 
        pthread_mutex_unlock(&chopstick[RIGHT]);   // release right chopstick
        printf("%*sPhilosopher %d puts down right chopstick\n", 2*((int)phnum+1), padding, (int)phnum+1);
    }
    pthread_exit(NULL);
}
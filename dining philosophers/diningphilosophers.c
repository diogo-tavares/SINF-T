#include <stdio.h>
#include <stdlib.h>
#include <pthread.h> 
#include <unistd.h>
#include <sys/time.h>
#include <assert.h>

#define PHILOSOPHERS 5 

#define THINKING 0
#define HUNGRY 1
#define EATING 2

#define DOWN 0
#define HOLD 1

#define MAX_MEALS 10
#define MAX_THINK_EAT_SEC 3

#define LEFT ((int)phnum + PHILOSOPHERS - 1) % PHILOSOPHERS 
#define RIGHT ((int)phnum + 0) % PHILOSOPHERS 

typedef struct {
    int philo_status;
    int left_chopstick;
    int right_chopstick;
    int meals_eaten;
} philosopher_status;

double get_time(void);
double think_eat_time(void);
void think(double think_time);
void eat(double eat_time);
void print_status(void);
static void *philosopher(void* phnum);

pthread_t philosophers_t[PHILOSOPHERS];
pthread_mutex_t chopstick[PHILOSOPHERS];    // locks for chopsticks
philosopher_status philosophers[PHILOSOPHERS];   // status information

int main(int argc, char *argv[]){
    
    int i;

    if (argc != 2){
        fprintf(stderr, "use: %s <run time>\n", argv[0]);
        exit(1);          
    }
         
    double run_time = atof(argv[1]);     //set command line argument value to variable run_time;
     
    for (i=0; i < PHILOSOPHERS; i++){
        pthread_mutex_init(&chopstick[i], NULL);    // initialize chopstick mutex locks
        philosophers[i].meals_eaten=0; // initialize meals eaten
        philosophers[i].philo_status=THINKING;   // philosophers start in thinking
        philosophers[i].left_chopstick=DOWN;    // philosophers start without chopsticks
        philosophers[i].right_chopstick=DOWN;
    }

    for (i=0; i < PHILOSOPHERS; i++)   // join the threads
        pthread_join(philosophers_t[i], NULL);

    for (i=0; i < PHILOSOPHERS; i++) {  // initialize and run philosopher threads
        pthread_create(&philosophers_t[i], NULL, philosopher, (void*) i);
    }

    double t = get_time();
    while ((get_time() - t) < (double)run_time){
        print_status();
    }

    for(i = 0; i < PHILOSOPHERS; i++){
        pthread_cancel(philosophers_t[i]);
    }

    for(i = 0; i < PHILOSOPHERS; i++){   //print the number of meals that each philosopher ate
            printf("Philosopher %d: %d meals\n", i+1, philosophers[i].meals_eaten);
    }
    
    return 0;
}

double get_time(void){
    struct timeval t;
    int rc = gettimeofday(&t, NULL);
    assert(rc == 0);
    return (double)t.tv_sec + (double)t.tv_usec/1e6;
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

void print_status(void){
    int i;

    system("clear");
    for (i = 0; i < PHILOSOPHERS; i++){
        printf("Philosopher %d is ", i+1);
        switch (philosophers[i].philo_status){
            case THINKING: printf("thinking!\n"); break;
            case HUNGRY: printf("hungry!"); 
                (philosophers[i].left_chopstick?printf(" Holding left chopstick!\n"):(philosophers[i].right_chopstick?printf(" Holding right chopstick!\n"):printf("!\n"))); break; 
            case EATING: printf("eating and holding both chopsticks!\n"); break;
        } 
    }
}

static void *philosopher(void* phnum){
    int i;

    while(1){
        think(think_eat_time());    // think for a while

        philosophers[(int)phnum].philo_status=HUNGRY;
       
        pthread_mutex_lock(&chopstick[LEFT]);    // get left chopstick
        philosophers[(int)phnum].left_chopstick=HOLD;
        pthread_mutex_lock(&chopstick[RIGHT]);   // get right chopstick
        philosophers[(int)phnum].right_chopstick=HOLD;
        
        philosophers[(int)phnum].philo_status=EATING;
        philosophers[(int)phnum].meals_eaten++;
        eat(think_eat_time());   // eat for a while

        pthread_mutex_unlock(&chopstick[LEFT]);    // release left chopstick
        philosophers[(int)phnum].left_chopstick=DOWN;
        pthread_mutex_unlock(&chopstick[RIGHT]);   // release right chopstick
        philosophers[(int)phnum].right_chopstick=DOWN;
        philosophers[(int)phnum].philo_status=THINKING;
    }
    pthread_exit(NULL);
}
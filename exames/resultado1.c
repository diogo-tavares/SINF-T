
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

pthread_mutex_t m;

int counter = 0, loops = 7550;

void Pthread_create(pthread_t *t, const pthread_attr_t *attr, void *(*start_routine)(void *), void *arg){
   int rc = pthread_create(t, attr, start_routine, arg);
}


void Pthread_join(pthread_t thread, void **value_ptr){
   int rc = pthread_join(thread, value_ptr);
}


void Pthread_mutex_lock(pthread_mutex_t *mutex){
   int rc = pthread_mutex_lock(mutex);
}


void Pthread_mutex_unlock(pthread_mutex_t *mutex){
   int rc = pthread_mutex_unlock(mutex);
}


void Pthread_mutex_init(pthread_mutex_t *mutex, pthread_mutexattr_t *attr){
   int rc = pthread_mutex_init(mutex, attr);
}


void *worker(void *arg){
   for (int i = 0; i < loops; i++) {
    Pthread_mutex_lock(&m);
    counter++;
    Pthread_mutex_unlock(&m);
   }
   pthread_exit(NULL);
}


int main(){
   pthread_t p1, p2;
   printf("Initial value : %d\n", counter);
   Pthread_mutex_init(&m, NULL);
   Pthread_create(&p1, NULL, worker, NULL);
   Pthread_create(&p2, NULL, worker, NULL);
   Pthread_join(p1, NULL);
   Pthread_join(p2, NULL);
   printf("Final value   : %d\n", counter);
   return 0;
}

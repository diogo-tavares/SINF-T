#include <stdio.h>
#include <unistd.h>

int main() {
  pid_t id = fork();

  if (id < 0) printf("Error creating process\n");
  else
    if (id > 0) printf("Parent process (%d)\n", id);
    else
      if (id == 0) printf("Child process\n");
}

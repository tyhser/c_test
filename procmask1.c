#include "csapp.h"

void handler(int sig)
{
        int olderrno = errno;
        sigset_t mask_all, prev_all;
        pid_t pid;

        sigfillset(&mask_all);
        while ((pid = waitpid(-1, NULL, 0)) > 0)
        {
                sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
                deletejob(pid);
                sigprocmask(SIG_SETMASK, &prev_all, &mask_all);
        }

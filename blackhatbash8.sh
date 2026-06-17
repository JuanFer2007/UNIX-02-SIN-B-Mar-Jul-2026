#!/bin/bash
awk '{print $1,$2,$3}' log.txt
awk '{print $1}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt
awk '{print $1,$NF}' log.txt
awk '{print $NF}' log.txt
awk -F',' '{print $1}' example_csv.txt
awk 'NR < 10' log.txt
head log.t
grep "42.236.10.117" log.txt | awk '{print $7}'
sed 's/Mozilla/Godzilla/g' log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
grep -o "Mozilla" log.txt       # Searches 'log.txt' and prints only the exact matches of "Mozilla" on new lines, ignoring the rest of the text.
grep -o "Godzilla" newlog.txt   # Searches 'newlog.txt' and displays only the word "Godzilla" each time it is found, isolating it from the context.
sed 's/ //g' log.txt > newlog1.txt
cat newlog1.txt
sed '1d' newlog.txt > newlogd.txt
cat newlogd.txt
sed '1d' newlog.txt > newlogl.txt
cat newlogl.txt
cat newlog1.txt
sed '5,7d' newlog.txt > newlog57.txt
cat newlog57.txt
sed -n '2,15 p' log.txt
sed -i '1d' log.txt
sleep 100 &                             # Runs 'sleep 100' in the background so the terminal remains free to accept other commands.
[1] 26193                               # Indicates this is background job #1 and its system Process ID (PID) is 26193.
ps -ef | grep sleep                     # Lists all active system processes and filters the output to show only those containing "sleep".
root           1       0  0 12:17 ? ... # Container process: The startup script keeping the Docker/Kubernetes container alive.
root       26193     444  0 13:15 pts/1 # Your process: Confirms that your background 'sleep 100' (PID 26193) is currently running.
root       26277       1  0 13:15 ? ... # Container process: A background loop from the container base system running a 1-second sleep.
root       26280     444  0 13:15 pts/1 # Temporal process: The 'grep' command itself showing up in the process list while searching.
jobs                                    # Lists all active background tasks managed by this specific terminal session.
[1]+  Ejecutando                 sleep 100 &  # Terminal status: Confirms job #1 is actively running in the background.
$ sleep 100 &                           # Prompt update: Triggered by pressing Enter, letting the shell report recent background changes.
[1]+  Hecho                      sleep 100    # Notification: The first 'sleep 100' job (PID 26193) has finished successfully.
[1] 27910                               # Launches a brand new background job #1 with a new system PID: 27910.
fg %1                                   # Brings background job #1 back into the foreground (takes control of the current screen).
sleep 100                               # Foreground execution: The terminal locks up here while waiting for the command to finish.
^Z                                      # Keystroke (Ctrl+Z): Sends a SIGSTOP signal to pause the running foreground process immediately.
[1]+  Detenido                   sleep 100    # Status update: Confirms the process is now suspended (frozen in memory, consuming no CPU).
bg %1                     # Resumes the suspended job #1 (the paused sleep 100) and moves it to run in the background.
[1]+ sleep 100 &          # System notification: Confirms that job #1 is now running again in the background (indicated by the '&').
[1]+  Hecho                      sleep 100 # Notification: Tells you that the 'sleep 100' process has just finished its execution successfully.
nohup ./exercise2.sh &    # Runs the script 'exercise2.sh' immune to hangups (nohup) so it keeps running even if you close the terminal.
[1] 32997                 # Indicates that the script is now background job #1 and has been assigned the system Process ID (PID) 32997.
nohup: ignoring input and appending output to 'nohup.out' # The system safely detaches the process from your keyboard and redirects all messages/logs to a file.

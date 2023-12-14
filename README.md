# AUTOMATE-FORTES-APLICATION
This batch/powershell script automatizes all the process of needing to have someone copy .dll and .exe files inside the Fortes network's folder and paste inside the localhost's Fortes folder, everytime Fortes server updates, in resume, auto updates the
database between the localhost's Fortes and the server's Fortes.

This is personally useful if you are a system administrator and has full access to your AD domain, by so, you
can create a GPO inside the GPME and link it to all domain or an especific OU inside it, applying this automation to as many users
inside the domain as you wish, saving a lot of time for you and your team.

The script can be easily edited to copy and paste not only the .dll or .exe files but all the folder if you wish

My future project will focus on automatically configure the Fortes for the user on his first time using it

WARNING:
- You need to run the batch script, not the powershell, as the batch script has the function to search for the powershell from all over the C: or inside a network's folder (they need to be in the same path in this case);
  
- After run the batch script, it will search and execute the powershell script;
- It will execute the powershell with admin privileges and bypassing the policy execution, be sure if you change the script to not affect the security of your domain.

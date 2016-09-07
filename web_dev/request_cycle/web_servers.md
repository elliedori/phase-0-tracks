# Web Servers

The Linux OS assumes from the start that the user is computer literate and knows what they're doing. Here's a quote I found that I really like:

> "Unix was not designed to stop its users from doing stupid things, 
> as that would also stop them from doing clever things." 

Linux believes in operating straight from the terminal, giving the user complete control, and executes commands without confirmation (allowing for potentially destructive actions). Other philosophies include: 

* provide mechanisms, not policy
* treat the user with respect
* small is beautiful
* each program does one thing well
* portability over efficiency
* keep things open source

A **virtual private server** is a virtual machine sold through an internet hosting service, which has its own copy of an operating systems. Users can access this VM remotely and have root or superuser access to it. They can install any software that runs on the chosen OS and are much, much cheaper than getting an equivalent physical server. They're easier to create and configure, but may be lower performance.

It's not good to run programs as the root user because it exposes your system to all the vulnerabilities those programs possess. If a program has a bug or virus, it suddenly has access to the core of your system. Also, when logged in as root, the system won't confirm your actions for you, so it's easy to run potentially destructive commands and destroy everything. Lastly, if you have multiple users working on a server, it's helpful for them each to have their own account. This helps track what's been done and keeps people accountable (as opposed to if they were all just working as the root user). 
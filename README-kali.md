NOTE: if you are running a firewall (like ufw), you will have to update some rules.

Status: active

To                         Action      From
--                         ------      ----
3129/tcp                   ALLOW       Anywhere
3129/tcp (v6)              ALLOW       Anywhere (v6)

Anywhere on docker0        ALLOW FWD   Anywhere on docker0
Anywhere (v6) on docker0   ALLOW FWD   Anywhere (v6) on docker0


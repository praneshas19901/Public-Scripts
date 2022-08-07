[![img](Pasted image 20220807201430.png)](https://github.com/praneshas19901/Public-Scripts/blob/91d6d54ed91909692b3625719969a9a6b9cb90c6/Pasted%20image%2020220807201430.png)

https://azure.microsoft.com/en-in/services/sql-database/campaign/

Current mortenson SQL server database setup is on individual standard tier.

We need to move them to elastic pools.

We need three elastic pools:

Core
Xconnect
Web

Core pool will have core database and master database.

Web pool will have web databases only.

Xconnect pool will have all other databases including xconnect shard databases.


Estimation of capacity required:

Core pool - 50 DTU, 100 GB ~ 120.47 USD/month

Web pool - 50 DTU, 100 GB ~ 120.47 USD/month

Xconnect pool - 200 DTU, 400 GB ~ 481 USD/month

Total ~ 721.9 USD/month

Current single database solution costs approx . 397.46 USD/month

Price will increase ~324 USD approx per month


This is required as it is observed that some databases are running on 100% or almost full DTU allocated, causing slower processing in backend services.

Elastic pools have the advantage of being able to handle databases which require high DTU for a short period of time and getting the processing and sitecore jobs completed quickly.

We have also split the pools into three, so that web database has its own dedicated DTU capacity and it will not need to be shared it with other databases which may cause poor website performance.


Server | Capacity | Cost
----|---|---
S1 | c1 | 5




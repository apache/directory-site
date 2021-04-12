---
title: Production Readiness
---

# Production Readiness

Due to some critical issues related to data corruption, we are not considering Apache Directory Server to be production ready. This is a well known issue, which is quite complicated to fix. We had added some repair command to work around the problem, but this is is just a workaround, and we know it won't fix all the data corruptions.

Would you decide to use Apache Directory Server in production, we would strongly suggest two things:
- first avoid updates as much as possible. If you load data once, and use the server in read only mode, you should be safe
- otherwise, be sure to have backups. This is the only safe way to get back to your feet if you have a serious data corruption that can't be solved by the 'repair' command.

The same kind of problem has hit OpenLDAP a while back, when they were using BDB as their default database. The smart move they did was to develop LMDB which is not only superior in all aspects, but also is guaranteed to be bullet proof by design against data corruption.

We have started moving in the exact same direction with Apache Mavibot, but the work is not completed yet (although we could have a version that works with Mavibot soon enough, but without dead data removal).

Long story short, we are working on solving this issue, it's complicated, it's time consuming, and it will take a while.

OTOH, Apache Directory Server was designed from day one to be almost fully compatible with OpenLDAP. That means you can develop and test your solution using Apache Directory Server, and move the schema and data to OpenDLAP once ready, on your production server.

We believe Apache Directory server brings great value for testing purposes, development and education, until we fix this data corruption issue.

Also keep in mind this is all a volunteer effort, and we only can do as much as we can. More volunteers would help, of course.

In the mean time, we thank you for your support - and bug reports -, this is quite an adventure to work on such a 500 000+ SLOC code base.

# AggressorNotification

Aggressor Notification Scripts for cobaltstrike (mainly notifications). Can be run on cobaltstrike client OR the team server(headless)

### cobaltparrot.cna
An aggressor script to send initial beacon callback notifications via Discord

### cobaltpigeon.cna
An aggressor script to send initial beacon callback notifications via Slack

Use headless(from a tmux, etc) as follows
```
./agscript <teamserverip> 50050 <teamserveruser> <teamserverpass> cobaltpigeon.cna
```

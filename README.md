# CobaltParrot

CobaltParrot is a set of simple Aggressor Notification Scripts for cobaltstrike. Can be run on cobaltstrike client OR the team server(headless)

### cobaltparrot.cna
An aggressor script to send initial beacon callback notifications via Discord

### cobaltpigeon.cna
An aggressor script to send initial beacon callback notifications via Slack

Use headless(from a tmux, etc) as follows
```
./agscript <teamserverip> 50050 <teamserveruser> <teamserverpass> cobaltpigeon.cna
```

Sample notifications on discord/slack
```
Initial Beacon cobaltpigeon, 1006977742 -> user@DESKTOP-D3DM34T/192.168.215.131/1.1.1.1/awesomelistener/x64
```

Use provided agscript-auto-restart.sh for restart automation

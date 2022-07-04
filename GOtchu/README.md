# GOtchu

**Author**: Mayhul

You are a hitman who want to contact to his client via chat. The client being paranoid sent encrypted message to you.
Can you tell the message?

Given to user:
- question/secAgent

**Note**: (a tip given to participants)

**Flag**: `dsc{GO_4nd_5ubm1t_th1s}`

**Note (CTF team)**: (note for ctf team)

1. `server.go` file is running inside the docker container which listens for connection on port 1234.
2. Maybe i will modify server file in future if its vulnerable to something i dont know yet
3. check for ddos.
4. Edit the client.go file where

```golang
func main(){
        addr := "<ip-of-the-container>:1234"
        server,err := net.Dial("tcp", addr)

``` 
Then rebuild it using command

```bash
go build -o secAgent client.go
```

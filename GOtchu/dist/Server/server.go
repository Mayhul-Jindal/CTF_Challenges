package main

import (
	b64 "encoding/base64"
        "bufio"
        "fmt"
        "net"
        "strings"
)

func handleConnection(c net.Conn){
	for {
		clientText, err := bufio.NewReader(c).ReadString('\n')
                if err != nil { fmt.Println(err);return}
			
                temp := strings.TrimSpace(string(clientText))
                if temp == "0" {
                        break
                }else if temp == "never_gonna_give_you_up" {
			serverText := "dsc{GO_4nd_5ubm1t_th1s}\n"
                	c.Write([]byte(b64.StdEncoding.EncodeToString([]byte(serverText))))
			break
		}else{
			break
		}
	}
	c.Close()
}

func main(){
	PORT := ":1234"
	l,err := net.Listen("tcp4",PORT)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer l.Close()

	for{
		client,err := l.Accept()
		if err != nil {
			fmt.Println(err)
			return
		}
		go handleConnection(client)
	}
}

package main

import (
	_ "encoding/hex"
	"fmt"

	//_ "github.com/muun/libwallet"
	_ "github.com/muun/libwallet/addresses"
        _ "github.com/muun/libwallet/aescbc"
        _ "github.com/muun/libwallet/btcsuitew/bech32m"
        _ "github.com/muun/libwallet/btcsuitew/btcutilw"
        _ "github.com/muun/libwallet/btcsuitew/chainhashw"
        _ "github.com/muun/libwallet/btcsuitew/txscriptw"
        _ "github.com/muun/libwallet/emergencykit"
        _ "github.com/muun/libwallet/errors"
        _ "github.com/muun/libwallet/fees"
        _ "github.com/muun/libwallet/hdpath"
        _ "github.com/muun/libwallet/keycrypt"
        _ "github.com/muun/libwallet/lnurl"
        _ "github.com/muun/libwallet/musig"
        _ "github.com/muun/libwallet/newop"
        _ "github.com/muun/libwallet/operation"
        _ "github.com/muun/libwallet/recoverycode"
        _ "github.com/muun/libwallet/sphinx"
        _ "github.com/muun/libwallet/swaps"
        _ "github.com/muun/libwallet/walletdb"

)

func main() {
    fmt.Println("Hello, World!")
}

package main

import (
	"os"

	"github.com/pschlump/dbgo"
	"github.com/pschlump/goja"
	"github.com/pschlump/goja_nodejs/require"
)

func main() {
	registry := new(require.Registry) // this can be shared by multiple runtimes

	runtime := goja.New()
	req := registry.Enable(runtime)

	runtime.RunString(`
var m = require("m.js");
m.test();
`)

	m, err := req.Require("m.js")
	_, _ = m, err
	if err != nil {
		dbgo.Fprintf(os.Stderr, "%(red)Error: %s\n", err)
		return
	}
	dbgo.Printf("%(green)Success\n")
}

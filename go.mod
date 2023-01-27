module github.com/pschlump/goja_nodejs

go 1.19

require (
	github.com/pschlump/goja v0.0.0-00010101000000-000000000000
	golang.org/x/net v0.4.0
)

require (
	github.com/dlclark/regexp2 v1.7.0 // indirect
	github.com/go-sourcemap/sourcemap v2.1.3+incompatible // indirect
	golang.org/x/text v0.5.0 // indirect
)

replace github.com/pschlump/goja => ../goja

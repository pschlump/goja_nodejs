
DIR=console eventloop process require url util

all:
	( cd console ; go build )
	( cd eventloop ; go build )
	( cd process ; go build )
	( cd require ; go build )
	( cd url ; go build )
	( cd util ; go build )


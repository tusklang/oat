package oat

import (
	"fmt"
	"os"

	oatenc "oat/format/encoding"
	"tusk/lang/interpreter"
	"tusk/lang/types"
)

func Run(params types.CliParams) {
	d, e := oatenc.TuskstDecode(params.Name)
	if e != nil {
		fmt.Println(e)
		os.Exit(1)
	}

	interpreter.RunInterpreter(d, params)
}

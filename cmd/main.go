package main

import (
	"fmt"

	"fyne.io/fyne/v2/app"
	"fyne.io/fyne/v2/widget"
)

func main() {
	fmt.Println("Hello world!")
	a := app.New()
	w := a.NewWindow("hospital app")
	w.SetContent(widget.NewLabel("It's an app for a hospital check-in"))
	w.ShowAndRun()
}

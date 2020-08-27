$PBExportHeader$w_02_test02.srw
forward
global type w_02_test02 from window
end type
type cb_1 from commandbutton within w_02_test02
end type
end forward

global type w_02_test02 from window
integer width = 4754
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
end type
global w_02_test02 w_02_test02

on w_02_test02.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_02_test02.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_02_test02
integer x = 901
integer y = 364
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "none"
end type


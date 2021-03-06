﻿$PBExportHeader$n_cst_beo_refnumtype.sru
$PBExportComments$RefnumType (Persistent Class from PBL map PTSetl) //@(*)[70821555|660]
forward
global type n_cst_beo_refnumtype from n_cst_beo
end type
end forward

global type n_cst_beo_refnumtype from n_cst_beo
end type
global n_cst_beo_refnumtype n_cst_beo_refnumtype

forward prototypes
protected function integer registerclass ()
protected function integer setattribute (readonly String as_name, readonly any aa_value)
protected function integer getattribute (readonly String as_name, ref any aa_value)
public function integer of_getid ()
public function Integer of_SetId (Integer ai_id)
public function String of_GetName ()
public function Integer of_SetName (String as_name)
public function String of_GetTag ()
public function Integer of_SetTag (String as_tag)
end prototypes

protected function integer registerclass ();//@(*)[]<nosync>//@(-)Do not edit, move or copy this line//
super::RegisterClass()

//@(data)(recreate=yes)<RegisterClass>
inv_bcm.RegisterClass("n_cst_beo_refnumtype")
inv_bcm.RegisterAttribute("id", "integer") //@(*)[70899352|661]
inv_bcm.SetKey("id")
inv_bcm.RegisterAttribute("name", "string(15)") //@(*)[70914336|662]
inv_bcm.RegisterAttribute("tag", "string(32767)") //@(*)[39331968|731]
//@(data)--

//@(text)(recreate=yes)<MapDBCols>
if inv_bcm.defaultDLK() then
   inv_bcm.MapDBColumn("id", "RefnumType", "Id")
   inv_bcm.MapDBColumn("name", "RefnumType", "Name")
   inv_bcm.MapDBColumn("tag", "RefnumType", "Tag")
end if 
//@(text)--


return 1
end function

protected function integer setattribute (readonly String as_name, readonly any aa_value);//@(*)[]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<Attribute Case>
int li_rc

li_rc = super::SetAttribute(as_name, aa_value)

if li_rc <> 0 then
    return li_rc
end if

choose case as_name
 case "id" 
   return of_SetId(Integer(aa_value))
 case "name" 
   return of_SetName(String(aa_value))
 case "tag" 
   return of_SetTag(String(aa_value))
end choose

//@(text)--

//@(text)(recreate=yes)<return value>
return 0
//@(text)--

end function

protected function integer getattribute (readonly String as_name, ref any aa_value);//@(*)[]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<Attribute Case>
integer li_rc

li_rc = super::GetAttribute(as_name, aa_value)

if li_rc <> 0 then
    return li_rc
end if

choose case as_name
 case "id" 
   aa_value = of_GetId()
   li_rc = 1
 case "name" 
   aa_value = of_GetName()
   li_rc = 1
 case "tag" 
   aa_value = of_GetTag()
   li_rc = 1
end choose

//@(text)--

//@(text)(recreate=yes)<return value>
return li_rc
//@(text)--

end function

public function integer of_getid ();//@(*)[70899352|661:id:g]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<body>
return GetValue("id")
//@(text)--

end function

public function Integer of_SetId (Integer ai_id);//@(*)[70899352|661:id:s]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<Define Return Value>
integer li_rc = 1

// Validation logic for "id" attribute goes after this fragment.
// Set li_rc to -1 if validation fails.
// Set li_rc to 2 if other attributes have been modified.
//@(text)--




//@(text)(recreate=yes)<Set Value>
if li_rc > 0 then
   if SetValue("id", ai_id) < 1 then
      li_rc = -1
   end if
end if
//@(text)--

//@(text)(recreate=yes)<Return Value>
return li_rc
//@(text)--

end function

public function String of_GetName ();//@(*)[70914336|662:name:g]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<body>
return GetValue("name")
//@(text)--

end function

public function Integer of_SetName (String as_name);//@(*)[70914336|662:name:s]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<Define Return Value>
integer li_rc = 1

// Validation logic for "name" attribute goes after this fragment.
// Set li_rc to -1 if validation fails.
// Set li_rc to 2 if other attributes have been modified.
//@(text)--




//@(text)(recreate=yes)<Set Value>
if li_rc > 0 then
   if SetValue("name", as_name) < 1 then
      li_rc = -1
   end if
end if
//@(text)--

//@(text)(recreate=yes)<Return Value>
return li_rc
//@(text)--

end function

public function String of_GetTag ();//@(*)[39331968|731:tag:g]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<body>
return GetValue("tag")
//@(text)--

end function

public function Integer of_SetTag (String as_tag);//@(*)[39331968|731:tag:s]<nosync>//@(-)Do not edit, move or copy this line//
//@(text)(recreate=yes)<Define Return Value>
integer li_rc = 1

// Validation logic for "tag" attribute goes after this fragment.
// Set li_rc to -1 if validation fails.
// Set li_rc to 2 if other attributes have been modified.
//@(text)--




//@(text)(recreate=yes)<Set Value>
if li_rc > 0 then
   if SetValue("tag", as_tag) < 1 then
      li_rc = -1
   end if
end if
//@(text)--

//@(text)(recreate=yes)<Return Value>
return li_rc
//@(text)--

end function

on n_cst_beo_refnumtype.create
TriggerEvent( this, "constructor" )
end on

on n_cst_beo_refnumtype.destroy
TriggerEvent( this, "destructor" )
end on

event constructor;call super::constructor;//@(data)(recreate=yes)<init>
this.SetRequired("id")
this.SetRequired("name")
//@(data)--

//@(text)(recreate=yes)<body>

//@(text)--

end event

event ue_describe;RETURN of_GetName ( )
end event

event ofr_postnew;call super::ofr_postnew;//Extending ancestor script.
//Return : 1, -1

Long	ll_NextId
Integer	li_Return

IF AncestorReturnValue = 1 THEN

	li_Return = -1
	Constant Boolean	cb_Commit = TRUE
	
	IF gnv_App.of_GetNextId ( This.ClassName ( ), ll_NextId, cb_Commit ) = 1 THEN
	
		IF of_SetId ( ll_NextId ) < 1 THEN
			//Fail
		ELSE
			//Success
			li_Return = 1
		END IF
	
	END IF

ELSE
	li_Return = AncestorReturnValue

END IF

RETURN li_Return
end event


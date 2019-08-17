<%
'			frm_lang = request.form("frm_lang")
'			OrderNo = request.form("OrderNo")
'			Style_No = request.Form("Style_No")
'			counter = request.Form("counter")
'			CO = request.Form("CO")
'			PO = request.form("PO")
' Author Philippe Collignon
' Email PhCollignon@email.com
' Credit ให้เขาด้วยนะครับกรุณาอย่าเอาออก 

Response.Expires=0
Response.Buffer = TRUE
Response.Clear
byteCount = Request.TotalBytes
RequestBin = Request.BinaryRead(byteCount) 
Dim UploadRequest
Set UploadRequest = CreateObject("Scripting.Dictionary")

BuildUploadRequest RequestBin
contentType = UploadRequest.Item("file").Item("ContentType")
filepathname = UploadRequest.Item("file").Item("FileName")
filename = Right(filepathname,Len(filepathname)-InstrRev(filepathname,"\"))

value = UploadRequest.Item("file").Item("Value")
detail = UploadRequest.Item("detail").Item("Value") 


Set ScriptObject = Server.CreateObject("Scripting.FileSystemObject")
FilePath = Server.MapPath("\Jobs\upload") & "\" & filename  'copy ไว้ในโฟลเดอร์ เดียวกับ Code
 
 Set MyFile = ScriptObject.CreateTextFile(FilePath)

For i = 1 to LenB(value)
     MyFile.Write chr(AscB(MidB(value,i,1)))
Next

MyFile.Close
%>

<font face='ms Sans serif' size=-1>
Upload ไปยัง path :<%=filePath%><br>
ชื่อ file : </b><%=filename%><br>
คำอธิบาย : <%=detail%>

<!--#include file="inc_upload.asp"-->
 
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta http-equiv="refresh" content="3;URL=Jobs.asp" />

<%

JobID = request.form("JobID")

If JobID<>"" then
			
			JobID2 = request.form("JobID2")
			JobSalary = request.Form("JobSalary")
			StartDate = request.Form("StartDate")
			RegistName = request.Form("RegistName")
			RegistAddress = request.form("RegistAddress")
			RegisTelephone = request.form("RegisTelephone")
			RegistEmail = request.form("RegistEmail")
			RegistIDCard = request.form("RegistIDCard")
			RegistBirthday = request.form("RegistBirthday")
			RegistReligion = request.form("RegistReligion")
			RegistNation = request.form("RegistNation")
 			If JobSalary="" then
			JobSalary=0
			end if
			


ConnectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="  & Server.MapPath("\") &"\jobs\db\jt_db2015.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConnectString

Set rs = Server.CreateObject("ADODB.recordset")
rs.open "Select  * from jt_job where id="&JobID,conn,1,3
 
if not rs.eof then
PositionName1=rs("PositionName")
end if

if JobID2<>0 then
	Set rs2 = Server.CreateObject("ADODB.recordset")
	rs2.open "Select  * from jt_job where id="&JobID2,conn,1,3
	if not rs2.eof then
		PositionName2=rs2("PositionName")
	end if
end if


Set rs3 = Server.CreateObject("ADODB.recordset")
rs3.open "Select  * from jt_apply",conn,1,3

rs3.addnew
rs3("JobID")=JobID
rs3("JobID2")=JobID2
rs3("JobSalary")=JobSalary
rs3("StartDate")=StartDate
rs3("RegistName")=RegistName
rs3("RegistAddress")=RegistAddress
rs3("RegisTelephone")=RegisTelephone
rs3("RegistEmail")=RegistEmail
rs3("RegistIDCard")=RegistIDCard
rs3("RegistBirthday")=RegistBirthday
rs3("RegistNation")=RegistNation
rs3("RegistReligion")=RegistReligion


rs3.update
 
 
	Dim myMail,HTML,strMsg
		
	Set myMail = Server.CreateObject("CDO.Message")
	myMail.BodyPart.Charset = "windows-874"
	Dim cdoConfig
	Set cdoConfig = myMail.Configuration
	With cdoConfig.Fields 
		.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
		.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "202.57.134.197"
		.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
		.Update 
	End With 

	myMail.Configuration = cdoConfig

'strMsg = ""	
strMsg = "<h2>สมัครงานตำแหน่ง "&PositionName1& "</h2><BR>"

if PositionName2<>"" then

strMsg= strMsg & "ตำแหน่งงาน อันดับที่ 2: " & PositionName2
end if

strMsg = strMsg & "<br>" & "เงินเดือนที่คาดหวัง: " & JobSalary & "<br>" & "เริ่มงานได้: " & StartDate

		
strMsg = strMsg & "<br><br>ข้อมูลผู้สมัคร<hr> ชื่อ-สกุล: " & RegistName &"<br>ที่อยู่: " & RegistAddress

strMsg = strMsg & "<br> เบอร์โทรศัพท์: " & RegisTelephone & "<br> อีเมล: " & RegistEmail &"<br>เลขที่บัตรประชาชน: " & RegistIDCard

strMsg = strMsg & "<br> วันเกิด: " & RegistBirthday &"<br>ศาสนา: " & RegistReligion	 &"<br>สัญชาติ: " & RegistNation	
'	myMail.From = "jintai@jintaijewelry.com"
'	myMail.To   = "judy@jintaijewelry.com"
'		if left(co,3)="059" then
'	myMail.To   = "jlien@jintaijewelry.com"
'		end if
'	myMail.Subject = "Confirm Order " & co
'	myMail.HTMLBody = strMsg
		
'	myMail.Send
	
	
	
	myMail.From = "jintai@jintaijewelry.com"
	myMail.To   = "tanasak@jintaijewelry.com"
	myMail.Subject = "สมัครงานตำแหน่ง "&PositionName1
	myMail.HTMLBody = strMsg
		
	myMail.Send
	
	Response.write ("Mail Sending.")
	Set myMail = Nothing 		
		
		
		
end if
 
response.Write("<P align=center>ได้รับข้อมูลเรียบร้อยแล้ว <Br> ขอบคุณที่่สนใจสมัครร่วมงานกับเรา</P>")
response.End()
%>
 
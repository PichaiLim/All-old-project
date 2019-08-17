
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<%


			SName = request.form("cname")
			SEmail= request.Form("cemail")
			SSubject=request.form("ccompany")
			Smessage=request.form("mcomment")
			'send = request.Form("send")
'response.Write(frm_th&"<br>")
'response.Write(OrderNo&"<br>")
'response.Write(PO&"<br>")
'response.Write(send)
 
if Smessage="" and SSubject="" then

response.write("กรุณาใส่หัวข้อ และข้อความที่ต้องการติดต่อ")
response.write("<BR><a href=javascript:history.go(-1)>ย้อนกลับ</a>")
response.End()
end if




'Response.Buffer = True

'Dimension variables
'Dim strBody 			'Holds the body of the e-mail
'Dim objCDOMail 			'Holds the mail server object
'Dim strMyEmailAddress 		'Holds your e-mail address
'Dim strCCEmailAddress		'Holds any carbon copy e-mail addresses if you want to send carbon copies of the e-mail
'Dim strBCCEmailAddress		'Holds any blind copy e-mail addresses if you wish to send blind copies of the e-mail
'Dim strReturnEmailAddress	'Holds the return e-mail address of the user


'----------------- Place your e-mail address in the following sting ----------------------------------

'strMyEmailAddress = "tanasak@jintaijewelry.com"

'----------- Place Carbon Copy e-mail address's in the following sting, separated by ; --------------

'strCCEmailAddress = "" 'Use this string only if you want to send the carbon copies of the e-mail

'----------- Place Blind Copy e-mail address's in the following sting, separated  by ; --------------

'strBCCEmailAddress = "" 'Use this string only if you want to send the blind copies of the e-mail

'-----------------------------------------------------------------------------------------------------


'Initialse strBody string with the body of the e-mail
'strBody = "<h2>Please Confirm Order "&co& "</h2>"
'strBody = strBody & "<br><b>View Order: </b>" &  "<a href=http://202.57.134.194/test/mk2/mk_view.asp?co="&co&"&po="&po&"&orderno="&orderno&">Order " & co &"</a>"
'strBody = strBody & "<br><b>Confirm Order: </b>" &  "<a href=http://202.57.134.194/test/mk2/mk_ordercf1.asp?orderno="&orderno&"&cf=mktapp>YES</a>"
'strBody = strBody & "<br><BR><b>Best Regards, </b>"
'strBody = strBody & "<br>Jintai Order Program<br>"


'Send the e-mail

'Create the e-mail server object
'Set objCDOMail = Server.CreateObject("CDONTS.NewMail")

'Who the e-mail is from (this needs to have an e-mail address in it for the e-mail to be sent)
'objCDOMail.From = "jintai@jintaijewelry.com"

'Who the e-mail is sent to
'objCDOMail.To = strMyEmailAddress

'Who the carbon copies are sent to
'objCDOMail.Cc = strCCEmailAddress

'Who the blind copies are sent to
'objCDOMail.Bcc = strBCCEmailAddress

'Set the e-mail body format (0=HTML 1=Text)
'objCDOMail.BodyFormat = 0

'Set the mail format (0=MIME 1=Text)
'objCDOMail.MailFormat = 0

'Set the subject of the e-mail
'objCDOMail.Subject = "Confirm Order" & co

'Set the main body of the e-mail
'objCDOMail.Body = strBody

'Importance of the e-mail (0=Low, 1=Normal, 2=High)
'objCDOMail.Importance = 1 

'Send the e-mail
'objCDOMail.Send
	
'Close the server object
'Set objCDOMail = Nothing

		'response.Redirect("mk_orderlist1.asp?frm_lang="&frm_lang)
		
		
		
		
		
	 
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
strMsg = "<h2>Contact from "&SName& "</h2><BR>"&SSubject

strMsg = strMsg & "<br>" & Smessage

		
strMsg = strMsg & "<br><br>" & SName &"<br>" & SEmail
	
'	myMail.From = "jintai@jintaijewelry.com"
'	myMail.To   = "judy@jintaijewelry.com"
'		if left(co,3)="059" then
'	myMail.To   = "jlien@jintaijewelry.com"
'		end if
'	myMail.Subject = "Confirm Order " & co
'	myMail.HTMLBody = strMsg
		
'	myMail.Send
	
	
	
	myMail.From = "jintai@jintaijewelry.com"
	myMail.To   = "jlien@jintaijewelry.com"
	myMail.Subject = "From Jintai Website"
	myMail.HTMLBody = strMsg
		
	myMail.Send
	
	Response.write ("Mail Sending.")
	Set myMail = Nothing 		
		

'response.Redirect("http://SNDSERV5/quiz/#main/contact")
response.Redirect("http://www.jintaijewelry.com")		
		
		
		
%>	 
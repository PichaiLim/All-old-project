<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>ASP Upload</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD> 
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
// ����� java script ����Ѻ��õ�Ǩ�ͺ��û�͹������
function validate(){

     if (document.upload.detail.value=="") {
          alert("��سһ�͹ ��͸Ժ�¢ͧ file..!");
          document.upload.detail.focus();
          return false;
     }
     if (document.upload.file.value=="") {
          alert("��س����͡ File ����ͧ��� upload..!");
          document.upload.file.focus();
          return false;
     }
     if (confirm("�س��ͧ����� file ���س���͡�������?")) {
          return true;
     } else {
          return false;
     } 
}
// End -->
</script> 



<BODY>
<%=server.MapPath("\")%>
<form name="upload" action="upload.asp" method="post" enctype="multipart/form-data" onSubmit="return validate();">
<table width="100%" border="0">
      <tr>
          <td width="27%">&nbsp;</td>
          <td width="73%">ASP Upload</td>
     </tr>
     <tr>
          <td nowrap>��͸Ժ�� file </td>
          <td><input type="text" name="detail"></td>
     </tr>
     <tr>
          <td nowrap>File ����ͧ��� Upload</td>
          <td><input type="file" name="file"></td>
     </tr>
     <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" value="Submit">
          <input type="reset" name="Submit2" value="Reset"></td>
     </tr>
</table>
</form>

</BODY>
</HTML>
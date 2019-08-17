<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Jintai Jewelry Group &ndash; Jobs</title>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-874">
    <link href="../Library/foundation/css/normalize.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/SiteJob.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=IM+Fell+Great+Primer+SC' rel='stylesheet' type='text/css'>
    <script src="../Scripts/holder.min.js"></script>


  <script src="../Scripts/jquery-2.1.4.min.js"></script>
  <script src="jquery-ui-1.10.3.custom.js"></script>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
 
  
  <script>
 $.datepicker.regional['th'] ={
        changeMonth: true,
        changeYear: true,
        //defaultDate: GetFxupdateDate(FxRateDateAndUpdate.d[0].Day),
        yearOffSet: 543,

         dateFormat: 'dd M yy',
        dayNames: ['�ҷԵ��', '�ѹ���', '�ѧ���', '�ظ', '����ʺ��', '�ء��', '�����'],
        dayNamesMin: ['��', '�', '�', '�', '��', '�', '�'],
        monthNames: ['���Ҥ�', '����Ҿѹ��', '�չҤ�', '����¹', '����Ҥ�', '�Զع�¹', '�á�Ҥ�', '�ԧ�Ҥ�', '�ѹ��¹', '���Ҥ�', '��Ȩԡ�¹', '�ѹ�Ҥ�'],
        monthNamesShort: ['�.�.', '�.�.', '��.�.', '��.�.', '�.�.', '��.�.', '�.�.', '�.�.', '�.�.', '�.�.', '�.�.', '�.�.'],
        constrainInput: true,
       
        prevText: '��͹˹��',
        nextText: '�Ѵ�',
        yearRange: '-50:+0',
        buttonText: '���͡',
      
    };
	
	 $.datepicker.regional['th2'] ={
        changeMonth: true,
        changeYear: true,
        //defaultDate: GetFxupdateDate(FxRateDateAndUpdate.d[0].Day),
        yearOffSet: 543,

         dateFormat: 'dd M yy',
        dayNames: ['�ҷԵ��', '�ѹ���', '�ѧ���', '�ظ', '����ʺ��', '�ء��', '�����'],
        dayNamesMin: ['��', '�', '�', '�', '��', '�', '�'],
        monthNames: ['���Ҥ�', '����Ҿѹ��', '�չҤ�', '����¹', '����Ҥ�', '�Զع�¹', '�á�Ҥ�', '�ԧ�Ҥ�', '�ѹ��¹', '���Ҥ�', '��Ȩԡ�¹', '�ѹ�Ҥ�'],
        monthNamesShort: ['�.�.', '�.�.', '��.�.', '��.�.', '�.�.', '��.�.', '�.�.', '�.�.', '�.�.', '�.�.', '�.�.', '�.�.'],
        constrainInput: true,
       
        prevText: '��͹˹��',
        nextText: '�Ѵ�',
        yearRange: '-0:+1',
        buttonText: '���͡',
      
    };


$.datepicker.setDefaults($.datepicker.regional['th']);

  $(function() {
    $( "#StartDate" ).datepicker( $.datepicker.regional["th2"] ); // Set ���ҷ����ҹ��������ҹ��
    $( "#StartDate" ).datepicker("setDate", new Date()); //Set ����ѹ�Ѩ�غѹ
	
	    $( "#RegistBirthday" ).datepicker( $.datepicker.regional["th"] ); // Set ���ҷ����ҹ��������ҹ��
    $( "#RegistBirthday" ).datepicker("setDate", new Date()); //Set ����ѹ�Ѩ�غѹ
	
  });


    var Holidays;
 
    //On Selected Date
    //Have Check Date
    function CheckDate(date) {
        var day = date.getDate();
        var selectable = true;//�к��������ö���͡�ѹ������������ True = �� False = �����
        var CssClass = '';
        
        if (Holidays != null) {

            for (var i = 0; i < Holidays.length; i++) {
                var value = Holidays[i];
                if (value == day) {

                    selectable = false;
                    CssClass = 'specialDate';
                    break;
                }
            }
        }
        return [selectable, CssClass, ''];
    }


    //=====================================================================================================
    //On Selected Date
    function SelectedDate(dateText, inst) {
        //inst.selectedMonth = Index of mounth
        //(inst.selectedMonth+1)  = Current Mounth
        var DateText = inst.selectedDay + '/' + (inst.selectedMonth + 1) + '/' + inst.selectedYear;
        //CallGetUpdateInMonth(ReFxupdateDate(dateText));
        //CallGetUpdateInMonth(DateText);
        return [dateText, inst]
    }
    //=====================================================================================================
    //Call Date in month on click image
    function OnBeforShow(input, inst) {
        var month = inst.currentMonth + 1;
        var year = inst.currentYear;
        //currentDay: 10
        //currentMonth: 6
        //currentYear: 2012
        GetDaysShows(month, year); 
       
    }
    //=====================================================================================================
    //On Selected Date
    //On Change Drop Down
    function ChangMonthAndYear(year, month, inst) {

        GetDaysShows(month, year);
    }

    //=====================================
    function GetDaysShows(month, year) {
        //CallGetDayInMonth(month, year); <<�� Function ���������¡ ajax �������ѹ� DataBase  ��������§������ҧ�֧�� Array ��ҹ��ҧ᷹��� Return Json
        //�Ҩ�� Ajax Call Data �����͡�ҡ��͹��л� ���Ǩ����ѹ����ͧ��� Set ����ѹ������´�ҹ��ҧ
        Holidays = [1,4,6,11]; // Sample Data
    }
    //=====================================
 
  </script>
 

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="Jintai Jewelry Group is mainly engaged in production, processing and distribution of jewelries including silver decorations, jewelry, silver, gold, rings, bracelet, necklace, anklets, bangle, toe ring, Gem,   silver ring, semi precious, precious stone, jade, cubic zirconia, crystal, pearl, marcasite">
    <meta name="keywords" content="jewelry, silver, brass, rings, bracelet, necklace, anklets, bangle, Gem, Gemstone, Jintai, Thailand, �Թ�� �Զǹ,�Թ��, ����ͧ��дѺ, ����ͧ��дѺ�Թ">
    <meta name="robots" content="index,follow">

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
</head>
<body id="topview">


    <header id="social-contact">
        <div class="container hidden-xs">
            <nav class="row">
                <div id="contact" class="col-sm-6 col-md-6">
                    <span>
                        <i class="fa fa-phone"></i>&nbsp;
                        �Դ������
                        (66)02-374-9766
                        &nbsp;
                        <br class="hidden visible-sm" />
                        <i class="fa fa-envelope"></i>&nbsp;
                        <a href="mailTo: human@jewelry.com" style="letter-spacing:1px; color:#ffffff; text-decoration:none;">human@jintaijewelry.com</a>
                    </span>
                </div>
                <div class="col-sm-6 col-md-6 hidden-sx">
                    <ul class="list-inline pull-right">
                        <li>
                            <a href="http://www.facebook.com/jintaifamily" target="_new" title="Facebook">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-square-o fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://plus.google.com/107373558516280756796/about?hl=th" target="_new" title="Google Plus">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-square-o fa-stack-2x"></i>
                                    <i class="fa fa-google-plus fa-stack-1x"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://twitter.com/Jintai_Official" target="_new" title="Twitter">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-square-o fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://instagram.com/jintaijewelry_official/" target="_new" title="Instragram">
                                <span class="fa-stack fa-lg">
                                    <font size="+3"><i class="fa fa-instagram fa-stack-1x"></i></font>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#" title="Line id" data-toggle="modal" data-target="#LineId">
                                <img src="../Image/Line_Icon.png" width="33" class="lazy" />
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>


        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" onClick="window.location.reload();">
                        <h2 class="hidden-xs hidden-sm " style="margin-top:-3%;padding:0;"><img src="../image/Logo_resize2.png" width=32> Jintai Jewelry Group</h2>
                        <h4 class="visible-xs visible-sm hidden" style="margin-top:-2%;padding:0;"><img src="../image/Logo_resize2.png" width=22> Jintai Jewelry Group</h4>
                    </a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="Index.html" target="_top">˹���á</a>
                        </li>
                        <li class="active">
                            <a href="Jobs.html" target="_top">���˹觧ҹ</a>
                        </li>
                        <li>
                            <a href="Welfare.html" target="_top">���ʴԡ��</a>
                        </li>
                        <li>
                            <a href="AboutUs.html" target="_top">����ǡѺ���</a>
                        </li>
                        <li>
                            <a href="ContactUs.html" target="_top">�Դ������</a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </header>

    <div class="clearfix">&nbsp;</div>

    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div id="page-header" class="row">
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-9">
                        <h3 style="">�����ҹ�Ѻ <span class="text text-primary"><strong>�Թ�� �Զǹ</strong></span> </h3>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 hidden-xs">
                        <div class="pull-right">
                            <ol class="breadcrumb">
                                <li><a href="Index.html" style="color:#2e6da4;">˹���á</a></li>
                                <li><a href="Jobs.html" style="color:#2e6da4;">���˹�ҹ</a></li>
                                <li class="active">��Ѥçҹ</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <div class="col-sm-9">
            
             
 <%

jid=request.QueryString("id")
ConnectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="  & Server.MapPath("\") &"\jobs\db\jt_db2015.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConnectString

Set rs = Server.CreateObject("ADODB.recordset")
rs.open "Select  * from jt_job where id="&jid,conn,1,3
 
if not rs.eof then
JobID=rs("id")
PositionName=rs("PositionName")
PositionSalary=rs("PositionSalary")
end if
%>  
<!--enctype="multipart/form-data"-->

                <form action="Register2.asp" class="form-horizontal" method="post"  enctype="multipart/form-data autocomplete="off"  role="form">

                    <div class="alert alert-warning alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <strong>
                            <i class="fa fa-exclamation-circle"></i> �����˵�:
                        </strong>
                        <br class="visible-xs hidden-sm hidden-md hidden-lg" />��͡������㹪�ͧ���������ͧ����
                        <span class="text text-danger">
                            <i class="fa fa-asterisk"></i>
                        </span>
                    </div>

                    <!-- ���˹觧ҹ -->
                    <div class="panel panel-primary clearfix">
                        <div class="panel-heading" >
                            <h3 class="panel-title"><span class="badge">1</span> ���˹觧ҹ</h3>
                        </div>
                        <div class="panel-body">

                            <div class="form-group">
                                <label for="JobID" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    <strong class="text text-danger"><i class="fa fa-asterisk"></i></strong> ���˹觷����Ѥ� 1 :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <p class="form-control-static"><%=PositionName%></p>
                                    <input type="hidden" class="form-control" id="JobID" name="JobID" value="<%=JobID%>">
                                </div>
                            </div>

                            <div class="clearfix"></div>

                            <div class="form-group">
                                <label for="JobID2" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    ���˹觷����Ѥ� 2 :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <select name="JobID2" id="JobID2" class="form-control">
                                    <%
									
										Set rs2 = Server.CreateObject("ADODB.recordset")
										rs2.open "Select  * from jt_job where PositionState<3 and id <>"&JobID,conn,1,3
									%>
                                    

                                        <option value="0">��س����͡������</option>
 									<% 
									do while not rs2.eof
									%>
                                    	<option value="<%=rs2("id")%>"><%=rs2("PositionName")%></option>
                                     <%
									 rs2.movenext
									 loop
									 %>   
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="JobSalary" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    �Թ��͹����ͧ��� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <div class="input-group">
                                        <input type="number" name="JobSalary" id="JobSalary" class="form-control" min="<%=PositionSalary%>" step="100" placeholder="<%=PositionSalary%>">
                                        <span class="input-group-addon">�ҷ</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="StartDate" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    �ѹ�������ö������ҹ�� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <div class="input-group">
                                      <input type="text" name="StartDate" id="StartDate" class="form-control" placeholder="dd/mm/yyyy">
                                    <span class="input-group-addon" id="datepicker-StartDate"><i class="fa fa-calendar"></i></span>                                    </div>
                              </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <p class="text text-right">
                                <a href="#topview" accesskey="t" style="color:#c9d7e6;">
                                    ��Ѻ����ҹź�ش <i class="fa fa-arrow-circle-o-up"></i>
                                </a>
                            </p>
                        </div>
                    </div>

                    <!-- ����ѵ���ǹ��Ǽ����Ѥ� -->
                    <div class="panel panel-primary clearfix">
                        <div class="panel-heading">
                            <h3 class="panel-title"><span class="badge">2</span> ����ѵ���ǹ��Ǽ����Ѥ�</h3>
                        </div>
                        <div class="panel-body">

                            <div class="form-group">
                                <label for="RegistName" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    <strong class="text text-danger"><i class="fa fa-asterisk"></i></strong> ���� � ���ʡ�� (��) :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <input type="text" name="RegistName" id="RegistName" class="form-control" placeholder="" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="RegistAddress" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    <strong class="text text-danger"><i class="fa fa-asterisk"></i></strong> ������� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <textarea name="RegistAddress" id="RegistAddress" class="form-control" rows="2" style="min-width:100%;" required></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="RegisTelephone" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    <strong class="text text-danger"><i class="fa fa-asterisk"></i></strong> ���Ѿ�� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <input type="tel" name="RegisTelephone" id="RegisTelephone" class="form-control" placeholder="" value="" required />
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="RegistEmail" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    <strong class="text text-danger"><i class="fa fa-asterisk"></i></strong> ����� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <input type="tel" name="RegistEmail" id="RegistEmail" class="form-control" placeholder="" value="" required />
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="RegistIDCard" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    <strong class="text text-danger"><i class="fa fa-asterisk"></i></strong> �Ţ���ѵû�ЪҪ� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <input type="number" name="RegistIDCard" id="RegistIDCard" class="form-control" maxlength="13" min="0" placeholder="" value="" required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="RegistBirthday" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    �ѹ��͹���Դ :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <div class="input-group">
                                        <input type="text" name="RegistBirthday" id="RegistBirthday" class="form-control" placeholder="dd/mm/yyyy">
                                        <span class="input-group-addon" id="datepicker-RegistBirthday"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="RegistReligion" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    ��ʹ� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <select name="RegistReligion" id="RegistReligion" class="form-control">
                                        <option value="-">��س����͡��������ʹ�</option>
                                        <option value="���ʵ�">���ʵ�</option>
                                        <option value="�ط�">�ط�</option>
                                        <option value="������">������</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="RegistNation" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    �ѭ�ҵ� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <select name="RegistNation" id="RegistNation" class="form-control">
                                        <option value="-">��س����͡�������ѭ�ҵ�</option>
                                        <option value="��">��</option>
                                        <option value="�չ">�չ</option>
                                        <option value="����">����</option>
                                        <option value="�������">�������</option>
                                        <option value="���">���</option>
                                        <option value="���´���">���´���</option>
                                        <option value="�ԧ����">�ԧ����</option>
                                        <option value="���������">���������</option>
                                    </select>
                                </div>
                            </div>

       <!--                       <div class="form-group">
                                <label for="RegistResume" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    ��������ѵ���ǹ��� :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <div class="input-group">

                                    </div>
                                </div>
                            </div>

                          <div class="form-group">
                                <label for="RegistPhoto" class="col-sm-5 col-md-4 col-lg-3 control-label">
                                    ������ٻ�Ҿ :
                                </label>
                                <div class="col-sm-7 col-md-8 col-lg-9">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-file-image-o"></i></span>
                                        <input type="file" name="RegistPhoto" id="RegistPhoto" class="form-control">
                                        <span class="input-group-addon">.JPG | .PNG | .GIF</span>
                                    </div>
                                </div>
                            </div>
 -->


                        </div>
                        <div class="panel-footer">
                            <p class="text text-right">
                                <a href="#topview" accesskey="t" style="color:#c9d7e6;">
                                    ��Ѻ����ҹź�ش <i class="fa fa-arrow-circle-o-up"></i>
                                </a>
                            </p>
                        </div>
                    </div>

                    <!-- submit -->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <input type="hidden" name="RegistDate" id="RegistDate" value="" />
                                <button name="ButtonRegister" id="ButtonRegister" type="submit" class="btn btn-primary btn-group-justified" accesskey="s">
                                    <i class="fa fa-envelope"></i> �����Ѥçҹ
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <!-- link-->
            <div class="col-sm-3 hidden-xs">
                <article>
                    <div class="list-group">
                        <a href="Jobs.html" class="active list-group-item"><i class="fa fa-link"></i> �����ҹ�Ѻ���</a>
                        <!--<a href="Register.html#intership" class="list-group-item"><i class="fa fa-link"></i> �֡�ҹ�Ѻ���</a>-->
                        <a href="Welfare.html" class="list-group-item"><i class="fa fa-link"></i> ���ʴԡ��</a>
                        <a href="ContactUs.html#ContactUs" class="list-group-item"><i class="fa fa-link"></i> �ͺ����������������</a>
                    </div>
                </article>
            </div>
        </div>
    </div>

    <footer>

        <div class="container-fluid" style="background-color:#252c34; border-bottom:2px solid #455669; color:#ffffff; padding:2% 0 3% 0;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <h4>
                            ����ǡѺ���
                        </h4>
                        <div class="row" style="padding-left:1em;">
                            <div class="col-md-12" style="letter-spacing:1px;">
                                <p align="justify">&nbsp;&nbsp;&nbsp; ����ѷ �Թ�� �Զǹ (�������) �ӡѴ ���͵�� � �ѹ��� 14 ����Ҿѹ�� �.�. 2537 ���·ع������¹ 22 ��ҹ�ҷ �ǡ����դ��������蹷�����˹��㹼���Ե����ͧ��дѺ��鹹Ӣͧ�š ��������ش���㹡�þѲ�Ҽ�Ե�ѳ�� ��������١��Ңͧ������Ѻ����ͧ��дѺ����դس�Ҿ�շ���ش ��Ҥ��صԸ���</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        &nbsp;
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-5">
                        <h4>�Դ������</h4>
                        <div class="row" style="background:url('../Image/BlankMap-World_gray.png') no-repeat center; padding-left:1em;">
                            <div class="col-xs-4"><i class="fa fa-map-marker"></i> �������:</div>
                            <div class="col-xs-8">�Ţ��� 9 ���������˧ 81/1 �ǧ�����ҡ ࢵ�ҧ�л� ��ا෾� 10240</div>

                            <div>&nbsp;</div>

                            <div class="col-xs-4"><i class="fa fa-phone"></i> ���Ѿ��:</div>
                            <div class="col-xs-8">(66) 02-374-9766</div>

                            <div>&nbsp;</div>

                            <div class="col-xs-4"><i class="fa fa-envelope-o"></i> �����:</div>
                            <div class="col-xs-8"><a href="mailto:human@jintaijewelry.com">human@jintaijewelry.com</a></div>

                            <div>&nbsp;</div>

                            <div class="col-xs-4"><i class="fa fa-map-o"></i> Ἱ���:</div>
                            <div class="col-xs-8">
                                <a href="../Image/Map/Jintai_map.jpg" download="../Image/Map/Jintai_map.jpg">��ǹ���ŴἹ���</a> <br />
                                <a href="https://goo.gl/maps/7b2Y7JtXHk42" target="_new">��ԡ���ʹ�Ἱ�� Google Map</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div style="background-color:#292d35;    color:#DDDDDD;    padding: 1% 0 0.2% 0;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-6" style="padding-top:0.6%;">

                        <div class="hidden visible-md visible-lg">
                            <i class="fa fa-copyright"></i>
                            Copyright 2015 by <a href="#" style="color:#FFFFFF;">Jintai Jewelry Group</a> All Rights Reserved.
                        </div>

                        <div class="hidden visible-xs visible-sm text text-center">
                            <i class="fa fa-copyright"></i>
                            Copyright 2015 by <a href="#" style="color:#FFFFFF;">Jintai Jewelry Group</a> All Rights Reserved.
                        </div>

                    </div>

                    <div class="clearfix hidden visible-xs visible-sm">&nbsp;</div>

                    <div class="col-xs-12 col-md-6">

                        <div class="hidden visible-md visible-lg pull-right">

                            <ul class="list-inline">
                                <li>
                                    <a href="http://www.facebook.com/jintaifamily" target="_new" title="Facebook">
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-square-o fa-stack-2x"></i>
                                            <i class="fa fa-facebook fa-stack-1x"></i>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://plus.google.com/107373558516280756796/about?hl=th" target="_new" title="Google Plus">
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-square-o fa-stack-2x"></i>
                                            <i class="fa fa-google-plus fa-stack-1x"></i>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/Jintai_Official" target="_new" title="Twitter">
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-square-o fa-stack-2x"></i>
                                            <i class="fa fa-twitter fa-stack-1x"></i>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://instagram.com/jintaijewelry_official/" target="_new" title="Instragram">
                                        <span class="fa-stack fa-lg">
                                            <font size="+3"><i class="fa fa-instagram fa-stack-1x"></i></font>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="Line id" data-toggle="modal" data-target="#LineId">
                                        <img src="../Image/Line_Icon.png" width="33" class="lazy" />
                                    </a>
                                </li>
                            </ul>

                        </div>

                        <div class="hidden visible-xs visible-sm text text-center">

                            <ul class="list-inline">
                                <li>
                                    <a href="http://www.facebook.com/jintaifamily" target="_new" title="Facebook">
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-square-o fa-stack-2x"></i>
                                            <i class="fa fa-facebook fa-stack-1x"></i>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://plus.google.com/107373558516280756796/about?hl=th" target="_new" title="Google Plus">
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-square-o fa-stack-2x"></i>
                                            <i class="fa fa-google-plus fa-stack-1x"></i>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/Jintai_Official" target="_new" title="Twitter">
                                        <span class="fa-stack fa-lg">
                                            <i class="fa fa-square-o fa-stack-2x"></i>
                                            <i class="fa fa-twitter fa-stack-1x"></i>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://instagram.com/jintaijewelry_official/" target="_new" title="Instragram">
                                        <span class="fa-stack fa-lg">
                                            <font size="+3"><i class="fa fa-instagram fa-stack-1x"></i></font>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="Line id" data-toggle="modal" data-target="#LineId">
                                        <img src="../Image/Line_Icon.png" width="33" class="lazy" />
                                    </a>
                                </li>
                            </ul>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    </footer>


    <div class="modal fade" id="LineId" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h1 class="modal-title" id="myModalLabel" style="color:#000;">Line ID: JintaiJewelry</h1>
                </div>
                <div class="modal-body">
                    <div class="text text-center">
                        <img src="../Image/QrCode_Line.png" class="lazy img-thumbnail img-responsive" alt="Alternate Text" />
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>


<%
rs.close
conn.close

%>
    <!-- Script -->
    
    <script src="../Scripts/jquery.lazyload.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../App_Script/ScriptJS.js"></script>
    
  

</body>
</html>

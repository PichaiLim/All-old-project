<%


ConnectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="  & Server.MapPath("\") &"\jobs\db\jt_db2015.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
conn.open ConnectString


%>
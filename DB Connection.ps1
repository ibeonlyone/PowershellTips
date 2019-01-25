$ConnectionString = "Data Source = {DBServerName};Intergrated Security=SSPI"
$Script:SqlConn = New-Object System.data.SqlClient.SqlConnection
$SqlConn.ConnectionString = $ConnectionString
$SqlConn.Open()
fuction SelectFromSQLServer($CmdString)
{
    $SqlCmd = New-Object System.Data.SqlClient.Sqlcommand
	$SqlCmd.Connection = $SqlConn
	$SqlCmd.Commandtext = $CmdString
	$SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
	$SqlAdapter.SelectCommand = $Sqlcmd
	$set = New-Object data.dataset
	$SqlAdapter.Fill($set)
	return $set
}

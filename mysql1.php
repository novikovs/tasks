<?php

/*
id int not null primary key
name text
begin_date datetime // дата начала события
end_date datetime // дата окончания события
*/

$lnk = mysql_connect('localhost', 'root', '') or die ('Not connected : ' . mysql_error());
mysql_select_db('job', $lnk) or die ('Cant select db : ' . mysql_error());

$from = date("Y-m-d", strtotime("last Monday"));
$to  = date("Y-m-d", strtotime("Sunday"));
$sql = 'SELECT DATE_FORMAT(begin, "%d %b") AS begin, DATE_FORMAT(end, "%d %b") AS end, name, DATEDIFF(end, begin) AS days FROM events WHERE begin <= DATE("'.$to.'") AND end >= DATE("'.$from.'")';
echo $sql;
if (!$result = mysql_query($sql)) die ('Err : ' . mysql_error());
echo '<h4>Текущая неделя с '.$from.' по '.$to.'</h4>';

while ($item = mysql_fetch_assoc($result)) {
    echo (++$i).'. '.$item['begin'].' — '.$item['end'].' Дней: '.++$item['days'].' '.$item['name'];
    echo '<br>';
}

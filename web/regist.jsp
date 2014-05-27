<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html> 
<head> 
<meta http-equiv="Content-Language" content="ru">

<style type="text/css">
<!--
 body {font-family: Verdana; font-size: 11pt; color: #000000;
    background: linear-gradient(45deg, transparent 50%, rgba(0,186,0,0.2) 50%, rgba(0,186,0,0.2)), 
                linear-gradient(-45deg, rgba(0,186,0,0.2) 50%, transparent 50%, transparent),
				url(img/fon.jpg) no-repeat;
				margin: 0; /* Убираем отступы в браузере */
   }
   
  Td         {font-family: Verdana; font-size: 11pt; color: #000000;}
  A:Link     {color: #000080; Text-decoration: none; }
  A:Visited  {color: #000080; Text-decoration: none; }
  A:Active   {color: #000080; Text-decoration: none; }
  A:Hover    {color: #0000ff; Text-decoration: underline; }
  .gradient {
    background: #fefcea; /* Для старых браузров */
    background: linear-gradient(to top, Yellow, #fefcea);
    padding: 10px;
   }
  .mainTable {
	border-top-width: thick;
	border-top-style: solid;
	border-top-color: red;

	border-bottom-width: thick;
	border-bottom-style: solid;
	border-bottom-color: blue;

	border-right-width: thick;
	border-right-style: solid;
	border-right-color: magenta;

	border-left-width: thick;
	border-left-style: solid;
	border-left-color: yellow;
	}
	
.custom-button {
 box-shadow: 0 4px 0 Tomato, 0 -1px 4px #999, inset 0 0 1px MistyRose;
 -o-box-shadow: 0 4px 0 Tomato, 0 -1px 4px #999, inset 0 0 1px MistyRose;
 -moz-box-shadow: 0 4px 0 Tomato, 0 -1px 4px #999, inset 0 0 1px MistyRose;
 -webkit-box-shadow: 0 4px 0 Tomato, 0 -1px 4px #999, inset 0 0 1px MistyRose;
 
 border-radius: 3px;
 -o-border-radius: 3px;
 -moz-border-radius: 3px;
 -webkit-border-radius: 3px;
 
 text-shadow: 0 1px 1px rgba(0, 0, 0, .6);
 -o-text-shadow: 0 1px 1px rgba(0, 0, 0, .6);
 -moz-text-shadow: 0 1px 1px rgba(0, 0, 0, .6);
 -webkit-text-shadow: 0 1px 1px rgba(0, 0, 0, .6);
 
 padding: 6px 12px;
 color: Firebrick;
 border: 1px solid Coral;
 
 background: MistyRose;
 background: -webkit-gradient(linear, left top, left bottom, color-stop(0, white), color-stop(1, Coral));
 background: -moz-linear-gradient(top, #FFEDE4 1%, Coral 100%);
 background: -o-linear-gradient(#FFEDE4, Coral);
 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFEDE4', endColorstr='Coral');
 
 font-size: 13px;
 font-family: tahoma, arial;
 font-weight: bold;
 
 cursor: pointer;
 outline: 0;
 
 display: inline-block;
 //float: right;
 margin: 0 2px;
 text-decoration:none;
}
 
.custom-button:active {
 box-shadow: inset 0px 0px 1px Firebrick;
 -o-box-shadow: inset 0px 0px 1px Firebrick;
 -moz-box-shadow: inset 0px 0px 1px Firebrick;
 -webkit-box-shadow: inset 0px 0px 1px Firebrick;
 margin-top: 4px
}
 
.custom-button:hover {
 opacity: .80;
}
-->
</style>
<!--конец style-->
<!--начало script-->
<script language="javascript">
var nowColor = -1;
// задержка смены цветов в 1/1000 секундах
var sleepTime = 1000;
// желаемый набор цветов
var sColors = new Array(
"#ff0000",
"#FF8C00",
"#ffd700",
"#008000",
"#00FFFF",
"#0000ff",
"#8B008B"
);
// tableColor - id таблицы
setInterval("changeBorderColor(tableColor, sColors)", sleepTime)

function changeBorderColor(objStyle, sColors) // мигающая рамка вокруг заголовка
{
nowColor++;
if (nowColor >= sColors.length)
nowColor = 0;
objStyle.style.borderColor = sColors[nowColor];
}
</script>


</head> 
<body bgcolor="Firebrick">
<!--начало body-->
<br>
<table align="center" id="tableColor" class="gradient" style="background-color:Yellow; border: 5px solid;" cellpadding="5"><tr><td>
<h1 align="center"><font size="5" color="VioletRed" ><br>    Регистрация:   </font></h1>
</td></tr></table>
<br><br><br>

<form method="post" action="loginServlet">

<table align="center"  bgcolor="#FFDEAD" cellpadding="3"  style='border-width: thick; border-style: dotted; border-color: gold;    background: #fefcea; background: linear-gradient(to top,#fefcea, #FFDEAD); padding: 10px;'>
<tr>
<td>Логин<font color="red">*</font>:</td>
<td><input type="text" size="20" name="login"></td>
</tr>
<tr>
<td>Пароль<font color="red">*</font>:</td>
<td><input type="password" size="20" maxlength="20" name="password"></td>
</tr>
<tr>
<td>Подтверждениt пароля<font color="red">*</font>:</td>
<td><input type="password" size="20" maxlength="20" name="password2"></td>
</tr>
<tr>
<td>Имя:</td>
<td><input type="text" size="20" name="name"></td>
</tr>
<tr height="80" >
<td></td>
<td height="50" ><br><input type="submit" value="Зарегистроваться" name="submit" class="custom-button">
</td>
</tr>
</table>
</form>

<br><h3><center>Поля со значком <font color="red">*</font> обязательны для заполнения</center></h3>
  <!--конец body и документа-->
</body> 
</html> 

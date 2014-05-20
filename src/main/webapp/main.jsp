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

// #toplayer {
 //   background: url(fon.jpg) no-repeat; /* Параметры фона */
  //  height: 200px; /* Высота слоя */
//	weight: 100%
 //  }
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

<script language="JavaScript">
function discription (i) //функция, определяющая описание ссылки при наведении на неё курсора
{switch (i) 
 {case 1: dis.innerHTML = "Тест проверяет на сколько хорошо вы можете запоминать визуально расположение объектов) Нужно запомнить предложеное расположение точек, а затем постараться выбрать на табло клетки, где находились до этого точки! В случае полного совпадения, вы проходите на слейдующий уровень =)))"; break;
 case 2: dis.innerHTML = "Тест проверяет вашу кратковременную память на слова) Нужно запомнить слова и после того, как они исчезнут по памяти ввести их в предложеные формы! В случае полного совпадения, вы проходите на слейдующий уровень ;D"; break;
 }
 }
 function nod (i) //функция, убирающая описание ссылка, при отведении от неё курсора
{switch (i) 
 {case 1: dis.innerHTML = ""; break;
 }
 }
</script>

	<script language="javascript">

/*Этот скрипт позволяет людям войти, используя форму, которая просит Логин пользователя и Пароль*/
function pasuser(form) {
if (form.id.value=="admin") { 
if (form.pass.value=="admin") { 
//location="" //куда переместится пользователь, если корректно войдет
document.getElementById('reg').style.visibility = "hidden";
document.getElementById('kab').style.visibility = "visible";
document.getElementById('exit').style.visibility = "visible";
var userName=form.id.value; //Логин пользователя ввыденный при входе
document.getElementById('kab').innerHTML='Приветик, '+userName+'! Можешь выбрать тест) Или выйти нажав на'; 
//alert("Вы зашли как admin")
} else {
alert("Invalid Password") //сообщение "Неверный Пароль"
}
} else { alert("Invalid UserID") //сообщение "Неверный Логин"
}
}
/********************************************************************************
Надо как-то очистить форму после выхода пользователя из своего аккунта!!!!! 
********************************************************************************/
function pasuser_out(form){  //Пользователь віходит из аакаунта
document.getElementById('exit').style.visibility = "hidden";
document.getElementById('kab').style.visibility = "hidden";
document.getElementById('reg').style.visibility = "visible";
//document.getElementByName('id').value="         " ???
}
</script> 
<!--конец script-->
<!--конец head-->
</head> 
<body bgcolor="Firebrick" >
<!--начало body-->
<iframe name="myIFR" style="display: none"></iframe>
<BR><!--Приветствие-->
<table align="center" id="tableColor" class="gradient" style="background-color:Yellow; border: 5px solid;" cellpadding="6"><tr><td>
<h1 align="center"><font size="5" color="VioletRed" ><br>   Добро пожаловать на сайт тестирования кратковременной памяти! =)   </font></h1>
</td></tr></table><br>
<!--Приветствие пользователя, кнопка выход-->
<table align="right" id="exit"width="47%" border="0" style="visibility:hidden; background-color:LightYellow; border-width: 1px;border-style: dashed;border-color: blue;">
<tr height="40"><td><font size="3"><center><a id="kab" href="#"  style="text-decoration:none; visibility:hidden; color:green; " ></a></center></font></td>
	<td  valign="left" width="15%"><div><input type="button" class="custom-button" value="   Exit   " onClick="pasuser_out()"></div></td>
	</tr></table><br><br><br>

<table width="100%" height="328"><tr><td class="mainTable"width="434" height="55" valign="top" style="background-color:LightYellow; background: #FFC125; background: linear-gradient(to right,Orange, white); padding: 10px;">
      <ul> <!--Ссылки переходов на тесты памяти-->
         <strong><img usemap="#point" src="img/point.jpg"  name="point" border="0" href="button.html">
		<MAP name="point">
            <AREA shape=rect coords=0,0,163,151 title="Переход к тесту визуальной памяти!" HREF="button.html" >
        </MAP></strong> 
          <a href="button.html" onMouseOver="discription(1)" onMouseOut="nod(1)" > Тест визуальной памяти</a> 
		  
        <strong><img usemap="#word" src="img/word.jpg"  name="word" border="0" href="word.html">
		<MAP name="word">
            <AREA shape=rect coords=0,0,165,160 title="Переход к тесту на запоминание слов!" HREF="word.html" >
        </MAP></strong> 
          <a href="word.html" onMouseOver="discription(2)" onMouseOut="nod(1)"> Тест на запоминание слов</a>   
      </ul></td>
    <td class="mainTable" width="173" style="background-color:Lightgreen;	background: #8EE5EE;  background: linear-gradient(to left, #8EE5EE, #fefcea);  padding: 10px;" >
	<table width="373" height="289" border="0"><tr>
          <td width="267" valign="top" cellpadding="5"><font color="green" size="4"><strong>
            <div id="dis" ></div>
            </strong></font></td>
        </tr></table>
	</td>
	
	
	<td valign="top" > <!--Форма входа на сайт-->
	<center>
<table id="reg"  bgcolor="#FFDEAD" cellpadding="2" style='border-width: thick; border-style: dotted; border-color: gold;    background: #fefcea; background: linear-gradient(to top,#fefcea, #FFDEAD); padding: 10px;'>
<tr><td colspan="2"><center><h2><i><b><font color="black" size="2">Для входа в учетную запись введите логин и пароль (admin)
  </b></i></h2></center></td></tr>
</font>
<tr><td align="right"><h3><i><b><font color="#FF0000" size="2">Имя пользователя:</font></b></i></h3></td>
<font size="3" color="#FF0000">
<td>
<form name="login" target="myIFR">
<input name="id" type="text"></td></tr>
</font>
<tr><td align="right"><h3><i><b><font color="#FF0000" size="2">Пароль:</font></b></i></h3></td>
<font size="3" color="#FF0000">
<td valign="top" >
<input 
name="pass"
type="password"></td></tr>
<tr height="80"><td align="right">
<input type="Reset" class="custom-button"></td>
<td><center>
<input type="submit" class="custom-button" value=" Login "
onClick="pasuser(this.form)"></center>
</form></td></tr><!--Окончание формы входа на сайт-->
<tr height="80"><td></td><td>
<form name="registration" action="regist.html" ><!--Начало формы регистрация-->
<center>
<input type="submit" class="custom-button" value=" Регстрация "
onClick=""></center>
</form></td></tr>
</table>
<BR>
</font>
<font size="3" color="#FF0000">
</td>
</tr></table> <!--Окончание формы регистации-->

<BR><BR><BR>
 
  <!--конец body и документа-->
</body> 
</html> 

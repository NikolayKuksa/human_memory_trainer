<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <style type="text/css">
	   a {
    color: #008000; /* Цвет обычной ссылки */ 
    text-decoration: none; /* Убираем подчеркивание у ссылок */
   }
   a:visited {
    color: #008000; /* Цвет посещённой ссылки */
   } 
   a:hover {
    color: #800000; /* Цвет ссылки при наведении на нее курсора мыши */  
    text-decoration: underline; /* Добавляем подчеркивание */
   }
	.hide { visibility:hidden }
    .show { visibility:visible }
    a.button {display:block; height:100%; width:100%;}
	  //  td.button {cursor: pointer;}
 body { 
     font-family: Arial, sans-serif; /* Рубленый шрифт */ 
    }
    .letter { 
     color: red; /* Красный цвет символов */ 
     font-size: 200%; /* Размер шрифта в процентах */ 
     font-family: serif; /* Шрифт с засечками */ 
     position: center; /* Относительное позиционирование */ 
     top: 5px; /* Сдвиг сверху */ 
    }
	 .gradient {
    background: Green; /* Для старых браузров */
    background: linear-gradient(to top, #836FFF, white);
    padding: 10px;
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

.switch {
    width: 49px;
    height: 47px;
    position: relative;
}
.switch input {
    /* First, we make it as wide as the container */
   //position: absolute;
    width: 100%;
    height: 100%;
    /* Then, we put it on top of everything else */
    z-index: 100;
    /* Last, we make it invisible */
    opacity: 0;
    /* This one is just for ergonomy */
    cursor: pointer;
}
    </style>
<!--конец style-->	
<!--начало script-->
	<script type="text/javascript">
 // выпадающее меню подуровней
 function show_Object1() { document.getElementById('div1').className='show'; }
 function hide_Object1() { document.getElementById('div1').className='hide'; }
 function show_Object2() { document.getElementById('div2').className='show'; }
 function hide_Object2() { document.getElementById('div2').className='hide'; }
 function show_Object3() { document.getElementById('div3').className='show'; }
 function hide_Object3() { document.getElementById('div3').className='hide'; }
</script>
	<script type="text/javascript">
//window.onload = 
function setcolor(x) { // функция закрашивает клеточку при нажатии (в белый или красный (если выделено))
    var button = document.getElementById(x.id);
    //var body = document.getElementsByValue('Change');
    var colors = ['white', 'red'];
    button.onclick = function() {
	if(button.style.backgroundColor == colors[1])
        button.style.backgroundColor = colors[0];//[Math.floor(Math.random() * colors.length)];
		else button.style.backgroundColor = colors[1];
    };
};
</script>

<SCRIPT language=Javascript type=text/javascript> 
<!-- 
var position=new Array(); // массив коефициентав таблиц (построчно)
var number=new Array(); // массив номеров коефициентов, которые надо отобразить на таблице
var time_sec=10; // значение таймера

function setColour(){
    number = [1,2,3,4];
    
}
function text_point(which) // рисует на таблице кружочки в заданых местах
{ 
	number = ${random};
	position = [b11,b12,b13,b14,b15,b21,b22,b23,b24,b25,b31,b32,b33,b34,b35,b41,b42,b43,b44,b45,b51,b52,b53,b54,b55];
	if (which==1){ // нажата кнопка "Начать" в первом тесте 5*5
		timeWord.innerHTML="Время: ";
		getClass('button',null,null);	//полностью очищаются все таблицы
		start_countdown(time_sec);
		for (i=0; i<number.length; i++){
			document.getElementById(position[number[i]].id).innerHTML='&#9679'; }
		document.getElementById('check_button').style.visibility = "hidden";
		document.getElementById('menuAccess').style.visibility = "hidden";
	}else {// нажата кнопка "Проверить"
		//chak();
	//	for (i=0; i<number.length; i++){
	//		document.getElementById(position[number[i]].id).innerHTML='&#9679'; } 
		timeWord.innerHTML="";
		countdown.innerHTML="";
	}
}
function text_flower(which) // рисует на таблице цветочки в заданых местах
{ 
number = [0,7,10,14,21,25,28,35];
position = [a11,a12,a13,a14,a15,a16,a21,a22,a23,a24,a25,a26,a31,a32,a33,a34,a35,a36,a41,a42,a43,a44,a45,a46,a51,a52,a53,a54,a55,a56,a61,a62,a63,a64,a65,a66];
	if (which==1){ // нажата кнопка "Начать" в тесте 6*6
		timeWord.innerHTML="Время: ";
		getClass('button',null,null);	//полностью очищаются все таблицы
		start_countdown(time_sec);
		for (i=0; i<number.length; i++){
			document.getElementById(position[number[i]].id).innerHTML='&#10048'; }
		document.getElementById('check_button').style.visibility = "hidden";
		document.getElementById('menuAccess').style.visibility = "hidden";
	}else {// нажата кнопка "Проверить" 
		for (i=0; i<number.length; i++){
			document.getElementById(position[number[i]].id).innerHTML='&#10048'; }
		timeWord.innerHTML="";
		countdown.innerHTML="";
	}
}
function text_heart(which) // рисует на таблице сердечки в заданых местах
{ 
number = [0,8,16,19,24,29,32,40,48];
position = [c11,c12,c13,c14,c15,c16,c17,c21,c22,c23,c24,c25,c26,c27,c31,c32,c33,c34,c35,c36,c37,c41,c42,c43,c44,c45,c46,c47,c51,c52,c53,c54,c55,c56,c57,c61,c62,c63,c64,c65,c66,c67,c71,c72,c73,c74,c75,c76,c77];
	if (which==1){ // нажата кнопка "Начать" в тесте 7*7
		timeWord.innerHTML="Время: ";
		getClass('button',null,null);	//полностью очищаются все таблицы
		start_countdown(time_sec);
		for (i=0; i<number.length; i++){
			document.getElementById(position[number[i]].id).innerHTML='&hearts;'; } 
		document.getElementById('check_button').style.visibility = "hidden";
		document.getElementById('menuAccess').style.visibility = "hidden";
		}else {// нажата кнопка "Проверить" 
		for (i=0; i<number.length; i++){
			document.getElementById(position[number[i]].id).innerHTML='&hearts;'; } 
		timeWord.innerHTML="";
		countdown.innerHTML="";
	}
}

function check_test(){ // проверка тестов
	if (document.getElementById("d1").style.display == "block"){
		text_point(2)
	}else if(document.getElementById("d2").style.display == "block"){
		text_flower(2)
	}else if(document.getElementById("d3").style.display == "block"){
		text_heart(2)
	}
	document.getElementById('check_button').style.visibility = "hidden";
	timeWord.innerHTML="Ура! Вы проиграли! ";
}

var allTags=new Array(); // функция очистки всех таблиц сразу (убирает "кружочки" и красит в белый цвет клетки) 
function getClass(theClass,node,tag) {

if (node==null) node=document;
if (tag==null) tag='*';

var allTags=node.getElementsByTagName(tag);

	for (i=0; i<allTags.length; i++) {
		if (theClass=='button')
		if (allTags[i].className==theClass) {
		eval('allTags[i].innerHTML=""');
		eval('allTags[i].style.backgroundColor="white"');
		}
	}
}
function checkPuts() {	//заполнение таблицы checkbox
var str;
position = [b11,b12,b13,b14,b15,b21,b22,b23,b24,b25,b31,b32,b33,b34,b35,b41,b42,b43,b44,b45,b51,b52,b53,b54,b55];
for (i=0; i<position.length; i++){
		str='<div class="switch"><input name="f'+i+'" value="true" type="checkbox"></div>';
		document.getElementById(position[i].id).innerHTML=str;
 }
   //document.getElementsByName('f1')[0].checked=true;
	//document.getElementsByName('f2')[0].disabled=true;
}
//function chak(){
//		if(document.getElementsByName('f1')[0].checked==true)
//	document.getElementsByName('g1')[0].disabled=true;	}

</script>

<script type="text/javascript">
    function displ(b) { // выводит таблицу размера соответствующего ссылке
        for (var a = 1; a < 4; a++) document.getElementById("d" + a).style.display = "none";
        document.getElementById("d" + b).style.display = "block";
		document.getElementById('check_button').style.visibility = "hidden";
		countdown.innerHTML = "" ;
		timeWord.innerHTML="";
    };
	 </script>

<script language="JavaScript1.2">
//Browsercheck: проверка браузера
ie=document.all?1:0
n=document.layers?1:0
ns6=document.getElementById&&!document.all?1:0

//сколько пикселей меню отображается, чогда оно задвинуто
lshow=85

//количество пикселей на которое меню перемещается за один шаг
var move=10;

//На какой скорости (в миллисекундах, низкое значение большая скорость)
menuSpeed=40

//будет ли меню передвигаться при скроллинге?
var moveOnScroll=true

/********************************************************************************
Ничего ниже не менять!!!
********************************************************************************/
//Определение переменных
var ltop;
var tim=0;

//конструктор объекта
function makeMenu(obj,nest){
    nest=(!nest) ? '':'document.'+nest+'.'
    if (n) this.css=eval(nest+'document.'+obj)
    else if (ns6) this.css=document.getElementById(obj).style
    else if (ie) this.css=eval(obj+'.style')						
	this.state=1
	this.go=0
        if (n) this.width=this.css.document.width
        else if (ns6) this.width=document.getElementById(obj).offsetWidth
        else if (ie) this.width=eval(obj+'.offsetWidth')
	this.left=b_getleft
    this.obj = obj + "Object"; 	eval(this.obj + "=this")	
}
//получение верхней (первой) позиции
function b_getleft(){
        if (n||ns6){ gleft=parseInt(this.css.left)}
        else if (ie){ gleft=eval(this.css.pixelLeft)}
	return gleft;
}
/********************************************************************************
Решение способа перемещения меню (onmouseover, onmouseout or onclick)
********************************************************************************/
function moveMenu(){
	if(!oMenu.state){
		clearTimeout(tim)
		mIn()	
	}else{
		clearTimeout(tim)
		mOut()
	}
}
//Menu in
function mIn(){
	if(oMenu.left()>-oMenu.width+lshow){
		oMenu.go=1
		oMenu.css.left=oMenu.left()-move
		tim=setTimeout("mIn()",menuSpeed)
	}else{
		oMenu.go=0
		oMenu.state=1
	}	
}

//Menu out
function mOut(){
	if(oMenu.left()<0){
		oMenu.go=1
		oMenu.css.left=oMenu.left()+move
		tim=setTimeout("mOut()",menuSpeed)
	}else{
		oMenu.go=0
		oMenu.state=0
	}
}
/********************************************************************************
Проверяется прокручивается ли страница, если да переместить меню после (if true)
********************************************************************************/
function checkScrolled(){
	if(!oMenu.go) oMenu.css.top=eval(scrolled)+parseInt(ltop)
	if(n||ns6) setTimeout('checkScrolled()',30)
}
/********************************************************************************
Инициальзирует страницу, делает объект меню, перемещает его в нужное место, показывает его
********************************************************************************/
function menuInit(){
	oMenu=new makeMenu('divMenu')
        if (n||ns6) scrolled="window.pageYOffset"
        else if (ie) scrolled="document.body.scrollTop"
	oMenu.css.left=-oMenu.width+lshow
        if (n||ns6) ltop=oMenu.css.top
        else if (ie) ltop=oMenu.css.pixelTop
	oMenu.css.visibility='visible'
	if(moveOnScroll) ie?window.onscroll=checkScrolled:checkScrolled();
}

//инициализирует при загрузке страницы меню
window.onload=menuInit;
</script>
<SCRIPT language=Javascript type=text/javascript> 
function start_countdown(sec) {
    var block = document.getElementById('countdown');
    simple_timer(sec, block);
	countdown.innerHTML = "00:"+sec ;
}

function simple_timer(sec, block, direction) {
    var time    = sec;
    direction   = direction || false;
             
    /*var hour    = parseInt(time / 3600);
    if ( hour < 1 ) hour = 0;
    time = parseInt(time - hour * 3600);
    if ( hour < 10 ) hour = '0'+hour;*/
 
    var minutes = parseInt(time / 60);
    if ( minutes < 1 ) minutes = 0;
    time = parseInt(time - minutes * 60);
    if ( minutes < 10 ) minutes = '0'+minutes;
 
    var seconds = time;
    if ( seconds < 10 ) seconds = '0'+seconds;
 
    block.innerHTML = /*hour+':'+*/minutes+':'+seconds;
 
    if ( direction ) {
        sec++;
 
        setTimeout(function(){ simple_timer(sec, block, direction); }, 1000);
    } else {
        sec--;
 
        if ( sec >= -1 ) {
            setTimeout(function(){ simple_timer(sec, block, direction); }, 1000);
        } else {
            //alert('Время вышло!');
			countdown.innerHTML = "Время вышло! Надо выделить n клеток" ;
			timeWord.innerHTML="";
			getClass('button',null,null);	//полностью очищаются все таблицы
			checkPuts();
			document.getElementById('check_button').style.visibility = "visible";
			document.getElementById('menuAccess').style.visibility = "visible";
			//document.getElementsByName('g1')[0].disabled=false;//проявление check box
        }
    }
}
</script>
<!--конец script-->
<!--конец head-->
  </head>
  <body bgcolor="white" class="gradient">
 <!--начало body--> 
 <iframe name="myIFR" style="display: none"></iframe>
 <br><br>
  <div id="divMenu" style="position:absolute; visibility:hidden" > <!--меню уровней и подуровней-->
    <nobr>
<table id="menuAccess" border="0" width="60">
<tr valign="top"><td>
 <div style="background-color:#00BB00;"
     onmouseover="show_Object1()" onmouseout="hide_Object1()" >
  <a href="javascript: displ('1')" onmouseover="show_Object1()" onmouseout="hide_Object1()" style="text-decoration:none">
  <b> Уровень 5*5 </b></a> <!--первый уровень-->
 </div>
 <div id="div1" onmouseover="show_Object1()" onmouseout="hide_Object1()"
     class="hide" style="background-color:#E8FED8;">
  <a href="#" onmouseover="show_Object1()" onmouseout="hide_Object1()">
  1.1</a><br>
  <a href="#" onmouseover="show_Object1()" onmouseout="hide_Object1()">
  1.2</a><br>
  <a href="#" onmouseover="show_Object1()" onmouseout="hide_Object1()">
  1.3</a><br>
   <a href="#" onmouseover="show_Object1()" onmouseout="hide_Object1()">
  1.4</a><br>
   <a href="#" onmouseover="show_Object1()" onmouseout="hide_Object1()">
  1.5</a><br>
 </div>
</td><td>
 <div style="background-color:#00BB00;"
     onmouseover="show_Object2()" onmouseout="hide_Object2()" >
  <a href="javascript: displ('2')" onmouseover="show_Object2()" onmouseout="hide_Object2()" style="text-decoration:none">
  <b> Уровень 6*6 </b></a> <!--второй уровень-->
 </div>
 <div id="div2" onmouseover="show_Object2()" onmouseout="hide_Object2()"
     class="hide" style="background-color:#E8FED8;">
  <a href="#" onmouseover="show_Object2()" onmouseout="hide_Object2()">
  2.1</a><br>
  <a href="#" onmouseover="show_Object2()" onmouseout="hide_Object2()">
  2.2</a><br>
  <a href="#" onmouseover="show_Object2()" onmouseout="hide_Object2()">
  2.3</a><br>
   <a href="#" onmouseover="show_Object2()" onmouseout="hide_Object2()">
  2.4</a><br>
   <a href="#" onmouseover="show_Object2()" onmouseout="hide_Object2()">
  2.5</a><br>
 </div>
</td><td>
 <div style="background-color:#00BB00;"
     onmouseover="show_Object3()" onmouseout="hide_Object3()" >
  <a href="javascript: displ('3')" onmouseover="show_Object3()" onmouseout="hideO_bject3()"style="text-decoration:none">
  <b> Уровень 7*7 </b></a> <!--третий уровень-->
 </div>
 <div id="div3" onmouseover="show_Object3()" onmouseout="hide_Object3()"
     class="hide" style="background-color:#E8FED8;">
  <a href="#" onmouseover="show_Object3()" onmouseout="hide_Object3()">
  3.1</a><br>
  <a href="#" onmouseover="show_Object3()" onmouseout="hide_Object3()">
  3.2</a><br>
   <a href="#" onmouseover="show_Object3()" onmouseout="hide_Object3()">
  3.3</a><br>
   <a href="#" onmouseover="show_Object3()" onmouseout="hide_Object3()">
  3.4</a><br>
   <a href="#" onmouseover="show_Object3()" onmouseout="hide_Object3()">
  3.5</a><br>
 </div>
</td>    <!--"УРОВНИ" пункт меню, которой отвечает за выдвижение\задвижение меню-->
<td><font  size="1"> <a class="letter" href="javascript://" onclick="moveMenu()" style="text-decoration:none; background-color:yellow;color:blue">УРОВНИ</a></font></td>
</tr>
</table>
 </nobr>
</div>
<!--<div class="switch"><input name="g1" value="g11" type="checkbox"></div>-->
<form name="f" method="post" action="onCheckboxServlet" ><!--target="myIFR"  action="javascript: check_test();">-->
	<table align="right"><tr><td><strong><img src="img/sun.gif" name="sun" border="0" onClick="kar (ns, news)"></strong> </td></tr></table>
	<div id="d1" style="display: block;"> <!--таблица для первого уровня-->
	<form name="f"> <!--форма первой таблицы checkbox-->
	  <table bgcolor="white" border align="center">
      <tr> 
        <td class="button"  id="b11" OnMousedown="javascript:setcolor(this);"  width="50" height="50"  align="center" >
		<a class="button"></a>		     
        </td>
		 <td class="button" id="b12" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center" >
          <a class="button"></a> 	  
        </td>		
		</td>
		 <td class="button" id="b13" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center" >
          <a class="button"></a>		  
        </td>		
		</td>
		 <td class="button" id="b14" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center" >
          <a class="button"></a>		  
        </td>
		<td class="button" id="b15" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center" ">
          <a class="button"></a>		  
        </td>
      </tr>
	  
	       <tr>
        <td class="button"  id="b21" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="b22" OnMousedown="javascript:setcolor(this);"align="center" >
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="b23" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="b24" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="b25" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>
	  
	   <tr>
        <td class="button"  id="b31" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="b32" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="b33" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>	
				</td>
		 <td class="button" id="b34" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="b35" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>
	  
	  	   <tr>
        <td class="button"  id="b41" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="b42" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="b43" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="b44" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="b45" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	  
	   <tr>
        <td class="button"  id="b51" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="b52" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="b53" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="b54" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="b55" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	   <!--Конец таблицы для первого уровня-->
  	</table>   
 <!--ссылка для вывода в таблицу кружочков onclick="location.href='${checkurl}'"-->
        <c:url var="checkurl" value="/onCheckboxServlet">
            <c:param name="command" value="logout"/>
        </c:url>
			 <table><tr height="50"><td> <input type="button" class="custom-button" value=" Начать "  name="comand" onClick="text_point(1)"  title="Показать кружочки!">
		</td>
		<td> <input type="submit" id="check_button" class="custom-button" value=" Проверить "  style="visibility:hidden;"title="Проверить тест!"> <!--onClick="check_test()" -->
	 </td></tr></table>
        <h1>${result}</h1>
	 	 </form>
	</div>
	
    <div id="d2" style="display: none;">  <!--таблица для второго уровня-->
	<table bgcolor="white" border align="center">
      <tr>
        <td class="button"  id="a11" OnMousedown="javascript:setcolor(this);" width="50"  align="center">
          <a class="button" ></a>		      
        </td>
		 <td class="button" id="a12" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
		</td>
		 <td class="button" id="a13" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
		</td>
		 <td class="button" id="a14" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		 <td class="button" id="a15" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		<td class="button" id="a16" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>
	  	       <tr>
        <td class="button"  id="a21" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="a22" OnMousedown="javascript:setcolor(this);"align="center" >
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="a23" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="a24" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a25" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a26" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>
	  
	   <tr>
        <td class="button"  id="a31" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="a32" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="a33" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>	
				</td>
		 <td class="button" id="a34" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		 <td class="button" id="a35" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		<td class="button" id="a36" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	  
	  	   <tr>
        <td class="button"  id="a41" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="a42" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="a43" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="a44" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a45" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a46" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	 
	  	   <tr>
        <td class="button"  id="a51" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="a52" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="a53" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="a54" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a55" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a56" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	 	  
	  	  	   <tr>
        <td class="button"  id="a61" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="a62" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="a63" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="a64" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a65" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="a66" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	 <!--Конец таблицы для второго уровня-->
	      </table>  <!--ссылка для вывода в таблицу цветочков-->
		  <table><tr height="50"><td> <input type="button" class="custom-button" value=" Начать " onClick="text_flower(1)" title="Показать цветочки!">
		</td></tr></table>
</div>

    <div id="d3" style="display: none;">  <!--таблица для третьего уровня-->
		<table bgcolor="white" border align="center">
      <tr>
        <td class="button"  id="c11" OnMousedown="javascript:setcolor(this);" width="50"  align="center">
          <a class="button" ></a>		      
        </td>
		 <td class="button" id="c12" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
<a class="button"></a>	  
        </td>		
		</td>
		 <td class="button" id="c13" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
		</td>
		 <td class="button" id="c14" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		 <td class="button" id="c15" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		<td class="button" id="c16" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
				<td class="button" id="c17" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>
	  	       <tr>
        <td class="button"  id="c21" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="c22" OnMousedown="javascript:setcolor(this);"align="center" >
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="c23" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="c24" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c25" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c26" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
				<td class="button" id="c27" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>
	  
	   <tr>
        <td class="button"  id="c31" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="c32" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="c33" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>	
				</td>
		 <td class="button" id="c34" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		 <td class="button" id="c35" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		<td class="button" id="c36" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
				<td class="button" id="c37" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	  
	  	   <tr>
        <td class="button"  id="c41" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="c42" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="c43" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="c44" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c45" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c46" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
				<td class="button" id="c47" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	 
	  	   <tr>
        <td class="button"  id="c51" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="c52" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="c53" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="c54" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c55" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c56" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
				<td class="button" id="c57" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	 	  
	  	  	   <tr>
        <td class="button"  id="c61" OnMousedown="javascript:setcolor(this);"height="50" align="center">
          <a class="button" ></a>	      
        </td>
		 <td class="button" id="c62" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		</td>
		 <td class="button" id="c63" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
				</td>
		 <td class="button" id="c64" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c65" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		<td class="button" id="c66" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
				<td class="button" id="c67" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr>	 
	        <tr>
        <td class="button"  id="c71" OnMousedown="javascript:setcolor(this);" width="50"  align="center">
          <a class="button" ></a>		      
        </td>
		 <td class="button" id="c72" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
		</td>
		 <td class="button" id="c73" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>		
		</td>
		 <td class="button" id="c74" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
		 <td class="button" id="c75" OnMousedown="javascript:setcolor(this);"align="center">
          <a class="button"></a>
        </td>
		<td class="button" id="c76" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
				<td class="button" id="c77" OnMousedown="javascript:setcolor(this);"width="50" height="50" align="center">
          <a class="button"></a>		  
        </td>
      </tr><!--Конец таблицы для третьего уровня-->
	      </table>  <!--ссылка для вывода в таблицу сердечек-->
		 <table><tr height="50"><td> <input type="button" class="custom-button" value=" Начать " onClick="text_heart(1)" title="Показать сердечки!">
		</td></tr></table>
	</div>

	<!--типа проверка-->
  <table><tr height="50"><td width="100"></td>
  <td><font color="green" size="6"><div id="timeWord"></div></font></td> <!--слово "ВРЕМЯ"-->
  <td><font color="#FF0000" size="6"><div id="countdown"></div></font></td></tr><!--Тут отображается ТАЙМЕР-->
    <tr height="50"><td> <input type="button" class="custom-button" value=" На главную " onClick="location.href='/index.jsp'" title="Переход к выбору тестов!"></td></tr>
</table>
	<!-- <input type="button" id="input_button_bg_change" value="Change background color"/>-->
  </body>
  <!--конец body и документа-->
</html>



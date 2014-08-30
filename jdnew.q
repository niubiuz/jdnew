//Call Lib.API.运行程序("wqm.exe")
PID=Plugin.Web.Bind("wqm.exe")
Call Plugin.Web.Go("http://item.jd.com/1165978.html")
//Call Plugin.Web.RunJS(0, "var xmlhttp=new ActiveXObject('MSXML2.XMLHTTP.3.0');xmlhttp.open('GET','http://bjtime.cn',false);xmlhttp.setRequestHeader('If-Modified-Since','bjtime');xmlhttp.send();var dateStr=xmlhttp.getResponseHeader('Date');var date=new Date(dateStr);var year=date.getFullYear();var month=date.getMonth()+1;var date1=date.getDate();var hour=date.getHours();var minutes=date.getMinutes();var second=date.getSeconds();var arr=document.getElementsByTagName('a');var len=arr.length;for(var i=0;i<len;i++){if(arr[i].style.cursor=='pointer'&& minutes=='45' && second=='00'){arr[i].click();}}")
For 30000
//时间 = Lib.网络.获取网络时间()
//TracePrint 时间
//If 时间>"21:34:00" Then

Call Plugin.Web.RunJS(0, "var arr=document.getElementsByTagName('a');var len=arr.length;for(var i=0;i<len;i++){if(arr[i].title=='大牛3（2GRAM 32GROM）'){arr[i].click();}}")
Delay 1000
//End If
//Call Plugin.Web.RunJS(0, "document.getElementById('InitCartUrl').click()")
For 4
Call Plugin.Web.RunJS(0, "var arr=wqmjq('a');for(var i=0;i<arr.length;i++){if(arr[i].innerText=='抢购中'){arr[i].click();}}")
Call Plugin.Web.RunJS(0, "wqmjq('.btn-qiang')[0].click();")
If Url<>"http://item.jd.com/1163613.html#none" And Url<>"http://item.jd.com/1163613.html" And Url<>"http://item.jd.com/1165978.html#none" And Url<>"http://item.jd.com/1165978.html"  Then
Exit For
End If
Next
Url = Plugin.Web.GetURL()
//TracePrint Url
If Url<>"http://item.jd.com/1163613.html#none" And Url<>"http://item.jd.com/1163613.html" And Url<>"http://item.jd.com/1165978.html#none" And Url<>"http://item.jd.com/1165978.html"  Then
Exit For
End If
Next


For 10000

Url = Plugin.Web.GetURL()
If Url <> "http://item.jd.com/1163613.html#none" And Url <> "http://item.jd.com/1163613.html" And Url <> "http://item.jd.com/1165978.html#none" And Url <> "http://item.jd.com/1165978.html" And Lib.算法.得到字符串中字母的数量(Url) <> 40 Then 
Delay 1
Else
Exit For	
End If
Next


For 30000
//Call Plugin.Web.RunJS(0, "document.getElementById('settleup-url').click()")
//Url = Plugin.Web.GetURL()
//If Url <> "http://cart.jd.com/cart/cart.html" And Lib.算法.得到字符串中字母的数量(Url)<>40 Then 
//Delay 1000
//For 2
//Call Plugin.Web.RunJS(0, "document.getElementById('toggle-checkboxes').click()")
//Next
//Call Plugin.Web.RunJS(0, "document.getElementById('toggle-checkboxes').click()")
//Delay 1000
//End If

//Call Plugin.Web.RunJS(0, "document.getElementById('toSettlement').click()")
//KeyPress 32,1
Call Plugin.Web.RunJS(0, "document.getElementById('order-submit').click()")
Next

/*! jQuery UI ext for dialog - v1.11.4 - 2015-04-29 */

var jConfirmCallBack;
var jAlertCallBack;

$(document).ready(function(){
	var alertAndConfirmBody = "<div id=\"AlertMessage\" title=\"信息提示\">";
	alertAndConfirmBody += "<p id=\"AlertMessageBody\" class=\"jquery_ui_dialog_msgBody\"></p>";
	alertAndConfirmBody += "</div>";
	alertAndConfirmBody += "<div id=\"ConfirmMessage\" title=\"信息确认\">";
	alertAndConfirmBody += "<p id=\"ConfirmMessageBody\" class=\"jquery_ui_dialog_msgBody\"></p>";
	alertAndConfirmBody += "</div>";
	alertAndConfirmBody += "<div id=\"AlertMessage2\" title=\"信息提示\">";
	alertAndConfirmBody += "<p id=\"AlertMessageBody2\" class=\"jquery_ui_dialog_msgBody\"></p>";
	alertAndConfirmBody += "</div>";
	
	$(alertAndConfirmBody).appendTo($("body"));
	
	msgDialogInit("AlertMessage");
	msgDialogInit("ConfirmMessage");
	
	msgDialogInit2("AlertMessage2");
	msgDialogInit2("ConfirmMessage");
});

function msgDialogInit(id){
	$('#'+id).dialog({
        autoOpen: false,
        width: 400,
        height: 200,
        resizable: false,
		modal: true,
		zIndex: 99999,
		close:function(event,ui){ // 关闭事件
			$(this).dialog("close"); 
		}
    });
}

function msgDialogInit2(id){
	$('#'+id).dialog({
        autoOpen: false,
        width: 400,
        height: 260,
        resizable: false,
		modal: true,
		zIndex: 99999,
		close:function(event,ui){ // 关闭事件
			$(this).dialog("close"); 
		}
    });
}

function jAlert(msg, callback) {
	if(callback==null) {
		callback = function(){};
	}
	jAlertCallBack = callback;
	$('#AlertMessageBody').html('<div class="jquery_ui_dialog_msgDIV"><table><tr><td width="34px"><span class="jquery_ui_dialog_alert_img_span"/></td><td>'+msg+'</td></tr></table></div>'+
								'<div class="jquery_ui_dialog_buttonDIV"><table><tr><td><button type="button name="alertButton" id="alertButton" class="jquery_ui_dialog_button" onclick="closeJAlert()"><span>确&nbsp;定</span></button></td></tr></table></div>');
    $('#AlertMessage').dialog('open');
}

function jAlert2(msg, callback) {
	if(callback==null) {
		callback = function(){};
	}
	jAlertCallBack = callback;
	$('#AlertMessageBody2').html('<div class="jquery_ui_dialog_msgDIV2"><table><tr><td width="34px"><span class="jquery_ui_dialog_alert_img_span"/></td><td>'+msg+'</td></tr></table></div>'+
								'<div class="jquery_ui_dialog_buttonDIV"><table><tr><td><button type="button name="alertButton" id="alertButton" class="jquery_ui_dialog_button" onclick="closeJAlert()"><span>确&nbsp;定</span></button></td></tr></table></div>');
    $('#AlertMessage2').dialog('open');
}

function jConfirm(msg, callback) {
	jConfirmCallBack = callback;
	$('#ConfirmMessageBody').html('<div class="jquery_ui_dialog_msgDIV"><table><tr><td width="34px"><span class="jquery_ui_dialog_confirm_img_span"/></td><td>'+msg+'</td></tr></table></div>'+
								  '<div class="jquery_ui_dialog_buttonDIV"><table><tr><td><button type="button" name="confirmButtonTrue" id="confirmButtonTrue" class="jquery_ui_dialog_button" onclick="closeJConfirmWithTrue()"><span>确&nbsp;定</span></button>&nbsp;&nbsp;<button type="button" name="confirmButtonFalse" class="jquery_ui_dialog_button" id="confirmButtonFalse" onclick="closeJConfirmWithFalse()"><span>取&nbsp;消</span></button></td></tr></table></div>');
	$('#ConfirmMessage').dialog('open');
}

function closeJAlert(){
	$("#AlertMessage").dialog("close");
	jAlertCallBack(true);
	jAlertCallBack = null;
}

function closeJConfirmWithTrue(){
 	$("#ConfirmMessage").dialog('close');
 	jConfirmCallBack(true);
 	jConfirmCallBack = null;
}

function closeJConfirmWithFalse(){
 	$("#ConfirmMessage").dialog('close');
 	jConfirmCallBack(false);
 	jConfirmCallBack = null;
}

/* 弹出窗口 */
function openDialogFromDIV(id, title, width, height){
	width = parseInt(width);
	height = parseInt(height);
	var windowHeight = window.screen.availHeight-100; // 获取电脑屏幕的高
	if(windowHeight - height < 100){
		height = windowHeight - 150;
	}
	$('#'+id).dialog({
		autoOpen: true, 
		modal: true,
		title: title, 
		width: width, 
		height: height, 
		resizable: true,
        autoResize: true,
        zIndex: 99999,
        close:function(event,ui){ // 关闭事件
        		$(this).dialog("close"); 
        		$(this).dialog("destroy");
            },
		overlay: { 
			opacity: 0.5,
			background: "black" 
		}
	}).width(width).height(height);
}

function openDialog(url,title,width,height,id){
	if(id == null || id == ""){
		id = "url_dialog_div";
	}
	if($("#"+id).length<=0){
		var url_dialog_div_html = "<div id=\""+id+"\" style=\"display: none;\"></div>";
		$(url_dialog_div_html).appendTo($("body"));
	}
	
	if(url.indexOf("?")>-1){
		url = url+"&t=" + Math.random();
	}else{
		url = url+"?t=" + Math.random();
	}
	
	$("#"+id).load(url);
	
	width = parseInt(width);
	height = parseInt(height);
	var windowHeight = window.screen.availHeight-100; // 获取电脑屏幕的高
	if(windowHeight - height < 100){
		height = windowHeight - 150;
	}
	$('#'+id).dialog({
		autoOpen: true, 
		modal: true,
		title: title, 
		width: width, 
		height: height, 
		resizable: true,
        autoResize: true,
        zIndex: 99999,
        close:function(event,ui){ // 关闭事件
        		$(this).dialog("close"); 
        		$(this).dialog("destroy");
        		$(this).remove();
            },
		overlay: { 
			opacity: 0.5,
			background: "black" 
		}
	}).width(width).height(height);
}

/* 弹出窗口 */
function openFrameDialog(url,title,width,height,id){
	
	width = parseInt(width);
	height = parseInt(height);
	var windowHeight = window.screen.availHeight-100; // 获取电脑屏幕的高
	if(windowHeight - height < 100){
		height = windowHeight - 150;
	}
	
	if(id == null || id == ""){
		id = "url_dialog_frame";
	}
	
	if(url.indexOf("?")>-1){
		url = url+"&t=" + Math.random();
	}else{
		url = url+"?t=" + Math.random();
	}
	
	if($("#"+id).length<=0){
		var url_dialog_frame_html = "<div id=\""+id+"\" style=\"display: none;\"><iframe frameborder='0' src='" + url + "' width='100%' height='99%'/></div>";
		$(url_dialog_frame_html).appendTo($("body"));
	}
	
	$('#'+id).dialog({
		autoOpen: true, 
		modal: true,
		title: title, 
		width: width, 
		height: height, 
		resizable: true,
        autoResize: true,
        zIndex: 99999,
        close:function(event,ui){ // 关闭事件
        		$(this).dialog("close"); 
        		$(this).dialog("destroy");
        		$(this).remove();
//        		IFRAME_DIALOG.dialog('close');
//        		window.$("iframe").remove("[name='dialogFrame']"); // 按ID移除已生成iframe标签
//				window.IFRAME_DIALOG.dialog("destroy");    		// 销毁对话框实例
            },
		overlay: { 
			opacity: 0.5,
			background: "black" 
		}
	}).width(width).height(height);
}

function closeDialog(id){
	if(id == null || id == ""){
		closeDialog("url_dialog_div");
		closeDialog("url_dialog_frame");
		return;
	}else if($("#"+id).length>0){
		$('#'+id).dialog("close"); 
		$('#'+id).dialog("destroy");
		$('#'+id).remove();
	}
}

function closeDivDialog(id){
	if($("#"+id).length>0){
		$('#'+id).dialog("close"); 
	}
}

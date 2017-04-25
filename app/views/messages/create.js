
$("#message_content").val("");
var $ol = $("div.messages ol")
$ol.append("<%=j(render('messages/message', :message => @message)) %>");
<%--
  User: zhoujingjie
  Date: 2017/8/30
  Time: 15:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<textarea class="hide" id="md-view">${doc.content}</textarea>
<style>
    #md-view-html ul{
        padding-left:30px;
    }
    #md-view-html ul li{
        list-style:disc;
    }
</style>
<div class="normal" id="md-view-html"></div>
<script>
    (function(){
        requirejs(['${cdn}/assets/simplemd/marked.min.js?v=${pluginInfo.version}'],function(marked){
            var html = marked($('#md-view').val());
             $('#md-view-html').html(html);
        });
    })();
</script>
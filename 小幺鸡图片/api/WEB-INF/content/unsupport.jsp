<%--
  User: zhoujingjie
  Date: 17/4/4
  Time: 13:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <script src="${assets}/js/browser.js"></script>
    <title>不支持该浏览器</title>
   <jsp:include page="/WEB-INF/includes/meta.jsp"/>
    <style>
        img{ max-width: 100%; }
        .login-form{width: 800px;background: #fff;padding: 50px;}
        .login-register-body{background-color: #EFEBE4}
        a{color: dodgerblue}
        .browsers{ width: 400px; margin: 30px auto; }
        .browsers img{ width: 80px; height: 80px; }
        .browsers a{ margin: 20px; float: left; width: 80px; text-align: center; }
        .browsers span{ padding-top: 20px; }
    </style>
</head>
<body class="login-register-body">
<div class="login-form mc">
    <div class="form">
        <div class="ta-c logo"><a href="/"><img src="${assets}/img/logo/full.png"></a> </div><br/><br/>
        <div><i></i>
            你正在使用的浏览器内核版本过低，<a href="https://www.microsoft.com/zh-cn/WindowsForBusiness/End-of-IE-support" target="_blank">微软已经不再提供技术支持</a>
            ，为避免可能存在的安全隐患，请尽快升级你的浏览器或者安装更安全的浏览器访问微信公众平台。
        </div>
        <div class="browsers cb">
            <a href="http://xiazai.sogou.com/detail/34/8/6262355089742005676.html?uID=3093DDAB3E69980A0000000057BD708B" target="_blank">
                <img src="assets/img/chrome.png">
                <span>Chrome</span>
            </a>
            <a href="http://www.firefox.com.cn/" target="_blank">
                <img src="assets/img/firefox.png">
                <span>火狐浏览器 </span>
            </a>
            <a href="http://browser.qq.com/" target="_blank">
                <img src="assets/img/qqbrowser.png">
                <span>QQ浏览器</span>
            </a>
        </div>
        <div>
            如果你正在使用的是双核浏览器，比如QQ浏览器、搜狗浏览器、猎豹浏览器、世界之窗浏览器、傲游浏览器、360浏览器等，可以使用浏览器的极速模式来继续访问微信公众平台。
            <a onclick="document.getElementById('details').style.display='block';">查看详情</a>
        </div>
        <div id="details" style="display: none">
            <p>方法一，点击浏览器顶部地址栏右侧的浏览器兼容模式图标，或，切换到极速模式</p>
            <p>
                <img src="https://res.wx.qq.com/mpres/htmledition/images/icon/browser/pic_browser_mode_ie_12db5d9.png"/></p>
            <p>方法二，在当前页面中，点击鼠标右键，选择“切换到极速模式”</p>
            <p>
                <img src="https://res.wx.qq.com/mpres/htmledition/images/icon/browser/pic_browser_mode_ie_22db5d9.jpg"/></p>
        </div>
    </div>
</div>
</body>
</html>
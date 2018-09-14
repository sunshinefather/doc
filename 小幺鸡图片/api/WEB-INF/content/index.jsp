<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if lt IE 9]> <script>location.href='unsupport.html?refer='+encodeURIComponent(location.href)</script> <![endif]-->
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
    <title>接口文档管理中心</title>
    <jsp:include page="/WEB-INF/includes/meta.jsp"/>
    <link rel="stylesheet" href="${assets}/css/index.css?v=${v}">
</head>
<body>
<div id="app">
<jsp:include page="/WEB-INF/includes/header.jsp"/>
<section class="m-sec1">
    <div class="m-sec1-desc ta-c">接口文档管理中心</div>
    <div class="ta-c m-sec1-go">
	<c:if test="${sessionScope.user!=null}">
					<a href="${ctx}/dashboard?v=${v}">进入工作台</a>
                    <a href="${ctx}/logout?t=<%=System.currentTimeMillis()%>">退出</a>
            </c:if>
            <c:if test="${sessionScope.user == null}">
<a  href="${ctx}/login">登陆</a>
            </c:if>
	</div>
</section>
<section class="m-sec2 cb mc">
    <div class="fl">
        <h3>在线接口测试</h3>
        <p class="m-s-desc">在线测试，方便前后端开发，降低错误率。<br/>支持：xml、json、txt、binary、websocket</p>
    </div>
    <div class="fl">
        <h3>可视化编辑与分享</h3>
        <p class="m-s-desc">可视化编辑器，完善的分享机制，多功能导出。让接口撰写变得十分简单。</p>
    </div>
    <div class="fl">
        <h3>安全保障</h3>
        <p class="m-s-desc">基于阿里云服务器，提供安全备份系统。多家公司使用，安全证明。</p>
    </div>
    <div class="fl">
        <h3>代码开源</h3>
        <p class="m-s-desc">可离线安装到内网服务器仅供公司内部使用。</p>
    </div>
</section>
</div>
<br/>
<jsp:include page="/WEB-INF/includes/footer.jsp"/>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Entrar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/plugin.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/app.css" />	
    <!--[if lt IE 9]>
		<script src="<c:url value="/resources/js/ie/respond.min.js"/>"> cache="false"></script>
		<script src="<c:url value="/resources/js/ie/html5.js"/>"> cache="false"></script>
		<script src="<c:url value="/resources/js/ie/fix.js"/>"> cache="false"></script>
    <![endif]-->
</head>
<body>
    <div class="modal-over">
        <div class="modal-center animated flipInX" style="width:300px;margin:-150px 0 0 -150px;">
            <div class="clear">
				<h1 class="text-white">Seja bem-vindo</h1>
                <p class="text-white">Informe seu usu&aacute;rio e senha para entrar</p>
				<p><input type="email" name="login" class="form-control text-sm" placeholder="Usuário"></p>
                <div class="input-group input-s">
                	<input type="password" name="" class="form-control text-sm" placeholder="Senha">
					<span class="input-group-btn">
                    	<button class="btn btn-success" type="submit" name="submit" data-dismiss="modal"><i class="fa fa-arrow-right"></i></button>
					</span>
                </div>
                <br/>
            </div>
        </div>
    </div>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/app.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/app.plugin.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/app.data.js"/>"></script>
	<script>
	(function ($) {
    	$(document).ready(function () {
        	$.fn.center = function () {
            	return this.each(function () {
                	var $this = $(this),
                    parent = $this.parent(),
                    topPos,
                    topMargin,
                    leftMargin,
                    resizeTimeout;
                        if (parent.is("body:not(.root-height-set)")) {
                            $("html,body").css("height", "100%").addClass("root-height-set");
                        }
                        if ($this.css("position") === "absolute" || $this.css("position") === "fixed") {
                            topPos = "20%";
                            topMargin = "-" + Math.round($this.outerHeight() / 2) + "px";
                            leftMargin = "-" + Math.round($this.outerWidth() / 2) + "px";
                            $this.css({ "left": "50%", "margin-left": leftMargin });
                        } else {
                            topPos = Math.floor((parent.height() - $this.outerHeight()) / 2);
                            topMargin = "auto";
                            $this.css({ "position": "relative", "margin-left": "auto", "margin-right": "auto" });
                        }
                        $this.css({ "top": topPos, "margin-top": topMargin });
                        $(window).resize(function () {
                            if (resizeTimeout) {
                                clearTimeout(resizeTimeout);
                            }
                            resizeTimeout = setTimeout(function () {
                                if ($this.css("position") === "absolute") {
                                    topMargin = "-" + Math.round($this.outerHeight() / 2) + "px";
                                    leftMargin = "-" + Math.round($this.outerWidth() / 2) + "px";
                                    $this.css({ "margin-left": leftMargin, "margin-top": topMargin });
                                } else {
                                    topPos = Math.floor((parent.height() - $this.outerHeight()) / 2);
                                    $this.css("top", topPos);
                                }
                            }, 150);
                        });
                    });
                }
                $(".modal-dialog").center();
                $(".modal-over").center();
            });
        })(jQuery);
	</script>
</body>
</html>

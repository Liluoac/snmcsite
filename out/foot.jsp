<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>国家人防卫星通讯系统网管中心</title>
<link rel="shortcut icon" href="img/CCADLogo.png">


</head>
<body>
	<div class="footer-overlay">

		<div class="footer-main-content">
			<div class="container">
				<div class="row">
					<div class="footer-main-content-area pt75">
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<div class="footer-head-title text-uppercase pb35">
									<h2 class="widgettitle">通信地址</h2>
								</div>
								<!-- /title -->
								<div class="touch-content">
									<div class="tweet-text">
										<span class="name-tweet">邮政编码： </span> <span
											class="tweet-content">210014</span>
									</div>
									<div class="tweet-text mt5">
										<span class="name-tweet">地址：</span> <span
											class="tweet-content">南京市秦淮区永智路8号101楼9楼 国家人防卫星通信系统网管中心
										</span>
									</div>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="footer-head-title text-uppercase pb35">
									<h2 class="widgettitle">联系方式</h2>
								</div>
								<!-- /title -->
								<div class="touch-content">
									<div class="tweet-text">
										<span class="name-tweet">技术服务热线： </span> <span
											class="tweet-content">025-82285822/33/44/55</span>
									</div>
									<div class="tweet-text mt5">
										<span class="name-tweet">E-mail: </span> <span
											class="tweet-content">snmc_nj@126.com </span>
									</div>
									<div class="tweet-text mt5">
										<span class="name-tweet">传真：: </span> <span
											class="tweet-content">025-82285806</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
	<script type="text/javascript" src="assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="assets/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="assets/js/countdown.js"></script>
	<script type="text/javascript" src="assets/js/parallax.min.js"></script>
	<script type="text/javascript" src="assets/js/circle-progress.js"></script>


	<!-- REVOLUTION JS FILES -->
	<script type="text/javascript"
		src="rev-slider/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="rev-slider/js/jquery.themepunch.revolution.min.js"></script>

	<!-- SLIDER REVOLUTION 5.0 EXTENSIONS (Load Extensions only on Local File Systems !
    The following part can be removed on Server for On Demand Loading) -->

	<script type="text/javascript"
		src="rev-slider/js/revolution.extension.actions.min.js"></script>

	<script type="text/javascript"
		src="rev-slider/js/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="rev-slider/js/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="rev-slider/js/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="rev-slider/js/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="rev-slider/js/revolution.extension.video.min.js"></script>



	<script type="text/javascript" src="assets/js/function.js"></script>

	<script>
		var tpj = jQuery;

		var revapi2;
		tpj(document)
				.ready(
						function() {
							if (tpj("#rev_slider_2_1").revolution == undefined) {
								revslider_showDoubleJqueryError("#rev_slider_2_1");
							} else {
								revapi2 = tpj("#rev_slider_2_1")
										.show()
										.revolution(
												{
													sliderType : "standard",
													jsFileLocation : "js/",
													sliderLayout : "fullscreen",
													dottedOverlay : "none",
													delay : 9000,
													navigation : {
														keyboardNavigation : "off",
														keyboard_direction : "horizontal",
														mouseScrollNavigation : "off",
														mouseScrollReverse : "default",
														onHoverStop : "off",
														arrows : {
															style : "hades",
															enable : true,
															hide_onmobile : false,
															hide_onleave : false,
															tmp : '<div class="tp-arr-allwrapper">	<div class="tp-arr-imgholder"></div></div>',
															left : {
																h_align : "left",
																v_align : "center",
																h_offset : 20,
																v_offset : 0
															},
															right : {
																h_align : "right",
																v_align : "center",
																h_offset : 20,
																v_offset : 0
															}
														}
													},
													visibilityLevels : [ 1240,
															1024, 778, 480 ],
													gridwidth : 1240,
													gridheight : 868,
													lazyType : "none",
													shadow : 0,
													spinner : "spinner0",
													stopLoop : "off",
													stopAfterLoops : -1,
													stopAtSlide : -1,
													shuffle : "off",
													autoHeight : "off",
													fullScreenAutoWidth : "off",
													fullScreenAlignForce : "off",
													fullScreenOffsetContainer : "",
													fullScreenOffset : "",
													disableProgressBar : "on",
													hideThumbsOnMobile : "off",
													hideSliderAtLimit : 0,
													hideCaptionAtLimit : 0,
													hideAllCaptionAtLilmit : 0,
													debugMode : false,
													fallbacks : {
														simplifyAll : "off",
														nextSlideOnWindowFocus : "off",
														disableFocusListener : false,
													}
												});
							}
						}); /*ready*/
	</script>
</body>
</html>
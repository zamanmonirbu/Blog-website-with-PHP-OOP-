<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

	<script type="text/javascript">
		$(window).load(function() {
			$('#slider').nivoSlider({
				effect: 'random',
				slices: 10,
				animSpeed: 500,
				pauseTime: 5000,
				startSlide: 0, 
				directionNav: false,
				directionNavHide: false, 
				controlNav: false, 
				controlNavThumbs: false, 
				pauseOnHover: true, 
				manualAdvance: false, 
				captionOpacity: 0.8, 
				beforeChange: function() {},
				afterChange: function() {},
				slideshowEnd: function() {} 
			});
		});
	</script>
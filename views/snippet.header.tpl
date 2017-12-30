<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom">
	<!-- brand logo goes here -->
	<div class="container no-padding">
		<div class="row">
			<div class="col-xs-12 col-sm-3 col-md-4">
				<div class="row">
					<div class="col-sm-12">
						{{if {clippings.logo} }}
						<a class="navbar-brand brand-image page-scroll pull-left" href="/">
							<img src="{{clippings.logo.getImage()}}" style="height: {{ clippings.logo_height }}px;"alt="{{clippings.site_name}} logo"/>
							{{ if {clippings.below_logo_text} }}
							<span class="below-logo hidden-sm-down" >{{ clippings.below_logo_text }}</span>
							{{ end-if }}
						</a>
						{{ else }}
						<a class="navbar-brand page-scroll site-name" href="/">{{clippings.site_name}}</a>
						{{end-if}}
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-9 col-md-8">
				<div class="row">

					<div class="col-sm-12">
						<!-- Appt request button and phone go here-->
						<div class="tel-align pull-right">
							<a class="btn btn-primary" style="font-size: {{ clippings.telephone_number_height }}px;" id="tel" href="tel: {{ clippings.phone }}"><i class="fa fa-phone-square" aria-hidden="true"></i>  {{ clippings.phone }}</a>
							<a class="btn btn-primary" style="font-size: {{ clippings.request_button_font_size }}px;" id="request" href="https://dashboard.petdesk.com/WebApptRequest/?placeGUID={{ clippings.petdesk_ref_code }}" target="_blank" ><i class="fa fa-calendar fa-lg" aria-hidden="true"></i>  Request Appointment</a>
						</div>
						<div id="menu-toggle" class="">
							<span></span>
							<span></span>
							<span></span>
							<span></span>
							<span></span>
							<span></span>
						</div>
					</div>
				</div>
			</div>
		</div>


		<script>
			$(document).ready(function(){
				$('#menu-toggle').click(function(){
					$(this).toggleClass('open');
					$('.desktop-slide-nav').toggleClass('open');
					var i = 0
					console.log(i);
					$('.desktop-slide-nav ul#nav li').each(function(){
						var $this = $(this);
						i++;
						console.log(i);
						setTimeout(function(){
							$this.addClass('vis');
						}, 250*i);
					});
					//$('#tel-appt').hide();
					i++;
					setTimeout(function(){
						$('#tel-appt').addClass('vis');
					}, 250*i);
					i++;
					setTimeout(function(){
						$('.social-links').addClass('vis');
					}, 250*i);
				});
			});
		</script>
		<div class="nav-bar">(**
			<button type="button" class="navbar-toggle" data-toggle="" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
			</button>
			**)
			<div class="container no-padding" >
				<div class=" " id="bs-example-navbar-collapse-1">
					(**
					<div class="mobile">
						{{bootstrap.navigation(nav navbar-nav,1)}}
					</div>
					**)
					<div class=" desktop-slide-nav nav-slider-container">
						<div class="">
							{{bootstrap.navigation(nav navbar-nav,1)}}

						</div>
						<div id="tel-appt">
							<h4><a href="tel: {{ clippings.phone }}" >tel: {{ clippings.phone }}</a></h4>
							<a class="btn btn-primary pull-right" id="request" href="https://dashboard.petdesk.com/WebApptRequest/?placeGUID={{ clippings.petdesk_ref_code }}" target="_blank" >Request Appointment</a>
							<ul class="list-inline social-buttons pull-right text-center">
								{{each social_links as social}}
								<li class="social-{{social.font_awesome_icon}}">
									<a href="{{social.url}}"><i class="fa fa-{{social.font_awesome_icon}}"></i></a>
								</li>
								{{end-each}}
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</nav>
<script>
	(**$('.menu-toggle').click(function(){
		$('.desktop-slide-in-nav').addClass('open');
	});
	$('.slide-in-nav .close').click(function(){
			$('.slide-in-nav').removeClass('open');
		});
		$(document).click(function(event) {
			if(!$(event.target).closest('.slide-in-nav, .menu-toggle').length &&
			   !$(event.target).is('.slide-in-nav, #nav-toggle')) {
				$('.slide-in-nav.open').removeClass('open');
			}
		})**)

	//$('.dropdown-toggle').attr('data-toggle','dropdown');
</script>

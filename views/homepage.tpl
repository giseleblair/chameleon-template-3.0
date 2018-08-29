<!-- Header -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>

<div class="slick-slider-container" >

	<div id="slick-hero">
		{{ each homepage_slides as slide sort by slide.sort_order }}
		{{ if {slide.background_video} }}
		<div class=""  >
			<header style="{{ if {slide.horizontal_alignment_for_mobile} }}background-position: {{ slide.horizontal_alignment_for_mobile }};{{ end-if }}" data-vide-bg="mp4: {{ slide.background_video.getMediaURL() }}{{if {slide.background_image} }}, poster: {{slide.background_image.getImage(2500)}}{{ end-if }}" data-vide-options=" loop: true, muted: true, position: 50% 50%">
				<div class="cr bg-overlay">
					<div class="cc">
						<div class="container">
							<div class="intro-text">
								<div class="intro-lead-in">{{slide.title}}</div>
								<div class="intro-heading">{{slide.second_line}}</div>
								{{ if {slide.button_text} }}
								<a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
								{{ end-if }}
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
		{{ else }}
		<div class=""  >
			<header style="background-image:url('{{slide.background_image.getImage(2500)}}'); {{ if {slide.horizontal_alignment_for_mobile} }}background-position: {{ slide.horizontal_alignment_for_mobile }};{{ end-if }}">
				<div class="cr bg-overlay">
					<div class="cc">
						<div class="container">
							<div class="intro-text">
								<div class="intro-lead-in">{{slide.title}}</div>
								<div class="intro-heading">{{slide.second_line}}</div>
								{{ if {slide.button_text} }}
								<a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
								{{ end-if }}
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
		{{ end-if }}
		{{ end-each }}
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		$('#slick-hero').slick({
			autoplay: true,
			arrows: false,
			fade: false,
			infinite: true,
			slidesToShow: 1,
			adaptiveHeight: true,
			speed: 300,
			dots: true,
			autoplaySpeed: 6700,
			pauseOnHover: false,
			pauseOnFocus: false,
		});
		
	});
</script>
{{ include script-bg-vid }}

<!-- About Section -->
{{ each about_section as abtsec sort by abtsec.sort_order}}
<section class="portfolio bg-light-gray" style="background-image:url('{{ abtsec.about_section_image.getImage(500, 500, crop) }}');background-size:contain;backgound-position:left bottom;background-repeat:no-repeat;">
	<div class="container">

		<div class="row">
			{{ if {index} % 1 == 1 && {index != 1} }}
		</div>
		<div class="row">
			{{ end-if }}
			<div class="col-md-2"></div>
			<div class="col-md-8 text-center">
				<div class="">
					<div class="row">
						<h2 class="section-heading home-section-two">{{abtsec.about_section_title}}</h2>
					</div>
					<div class="row">
						<p class="pull-left home-section-two">{{ abtsec.about_section_copy }}</p>
						{{ if {abtsec.about_section_button_txt} }}
						<p><a class="btn btn-primary" href="{{ truepath({abtsec.about_section_btn_links_to}) }}" >{{ abtsec.about_section_button_txt }}</a></p>
						{{ end-if }}
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
{{ end-each }}


<!-- Homepage Squares -->


<section id="team" class="bg-light-gray" style="background-image:url({{ page.background_pattern.getImage() }})">
	<div class="padding20" style="padding:20px;">
		<div class="row">
			{{ each homepage_squares as square sort by square.sort_order }}
			{{ if {index} % 3 == 1 && {index} != 1 }}
		</div>
		<div class="row-padding"></div>
		<div class="row">
			{{ end-if }}
			<div class="col-md-4">
				<div class="square-wrap">
					<a href="{{ truepath({square.links_to}) }}">
						<img src="{{ square.image.getImage(750, 550, crop) }}" alt="{{ square.image_title }} image">
						<h3>{{ square.image_title }}</h3>
						{{ if {square.button_text} }}
						<span class="btn btn-lg btn-primary" href="{{ truepath({square.links_to}) }}">{{ square.button_text }}</span>
						{{ end-if }}
						{{ if {square.image_caption} }}
						<div class="caption">
							{{ square.image_caption }}
						</div>
						{{ end-if }}
					</a>
				</div>
			</div>
			{{ end-each }}
		</div>
	</div>
</section>


<!-- Timeline Section -->
{{ if {page.timeline_title} }}
<section id="about">
	<div class="">
		(** timeline header **)
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">{{page.timeline_title}}</h2>
				<h3 class="section-subheading text-muted">{{page.timeline_subtitle}}</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<ul class="timeline">
					{{each home_page_about_timeline as timeline sort by timeline.sort_order }}

					<div class="timeline-item-wrap">
						(**{{if {index} % 2 = 0}}**)
						<div class="row">
							<div class="col-sm-12">
								(**timeline image **)
								<div class="timeline-image" style="background-image: url({{timeline.bubble_image.getImage(668,370,crop)}});">
									<div class="container">
										<div class="row">
											<div class="col-sm-5">
												<div class="timeline-text opaque-bg">
													<h2 class="text-muted">{{timeline.bubble_title}}</h2>
													<h4 class="subheading text-muted">{{timeline.bubble_subtitle}}</h4>
													(** insert body text here **)
													<div class="timeline-panel desktop">
														<div class="timeline-body text-center">
															<p class="text-muted">{{timeline.bubble_blurb}}</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="container">
							<div class="row">
								<div class="col-sm-5 mobile">
									<div class="timeline-panel opaque-bg">
										<div class="timeline-body text-center">
											<p class="text-muted">{{timeline.bubble_blurb}}</p>
										</div>
									</div>
								</div>
							</div>
							<div class="row">

								<div class="col-sm-6 desktop">

								</div>
							</div>
						</div>
						(**{{else}}
						<div class="row">
							<div class="col-sm-12">
								<div class="timeline-image">
									<img class=" img-responsive" src="{{timeline.bubble_image.getImage(600,600,crop)}}" alt="{{timeline.title}} Image">
								</div>

							</div>
						</div>

						<div class="row">
							<div class="col-sm-12">
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h2>{{timeline.bubble_title}}</h2>
										<h4 class="subheading">{{timeline.bubble_subtitle}}</h4>
									</div>
									<div class="timeline-body">
										<p class="text-muted">{{timeline.bubble_blurb}}</p>
									</div>
								</div>
							</div>
						</div>

						{{end-if}}**)
					</div>

					{{end-each}}

					<li class="">
						(**<div class="text-center">
							{{ if {page.timeline_button_text} }}
							<h4><a href="{{ truepath({page.timeline_btn_links_to}) }}" ><button class="btn btn-xl">{{page.timeline_button_text}}</button></a></h4>
							{{ end-if }}
						</div> **)
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<script>

		$(window).scroll( function(){
			/* Check the location of each desired element */
				var $this = $('.timeline-item-wrap').last().find('.timeline-image');
				var top_of_object = $this.offset().top;
				var top_of_window = $(window).scrollTop();

				/* If the object is completely visible in the window, fade it in */
				if( top_of_object <= top_of_window  ){

					$this.addClass('unfix');

				} else {
					$this.removeClass('unfix');
				}



		});
</script>
{{ end-if }}

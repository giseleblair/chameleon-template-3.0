<div id="our-videos">
	<div class="cr">
		<div class="cc">
			{{ include inner-page-hero }}
		</div>
	</div>
	{{ include sectionlinks }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-md-12" >
					<h1>{{ page.page_title }}</h1>
					<div class="body-text" >
						{{ page.body_text }}
					</div>
					<div class="row">
						{{ each about_us_videos as video sort by video.sort_order }}
						{{ if {index} % 2 == 1 && $count != 1 }}
					</div>
					<div class="row">
						{{ end-if }}
						<div class="col-md-6">
							<iframe class="ytplayer" type="text/html" width="100%" src="https://www.youtube.com/embed/{{ video.youtube_id }}?rel=0" frameborder="0"></iframe>
							<p class="large">{{ video.video_title }}</p>
							<p>{{ video.video_description}}</p>
						</div>
						{{ end-each }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

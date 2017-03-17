<div id="faq">
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
					<div class="title-border">
						<h1>{{ page.page_title }}</h1>
					</div>
					<div class="body-text" >
						{{ page.body_text }}
					</div>
					{{ each frequently_asked_questions as qna sort by qna.sort_order }}
					<div class="spacer">
						<div class="row">
							<div class="col-md-12">
								<p class="large"><strong>{{ qna.question }}</strong></p>
								<p>{{ qna.answer }}</p>
							</div>
						</div>
					</div>
					{{ end-each }}
				</div>
			</div>
		</div>
	</div>
</div>

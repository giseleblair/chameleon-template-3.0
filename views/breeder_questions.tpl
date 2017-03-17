<div id="breeder-questions">
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
					{{ each breeder_q as question sort by question.sort_order }}
					<div class="row">
						<div class="col-md-12">
							<p>{{ question.question }}</p>
							<p>{{ question.answer }}</p>
							<hr>
						</div>
					</div>
					{{end-each }}
				</div>
			</div>
		</div>
	</div>
</div>

<div id="links">
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
					{{ each external_links as link sort by link.sort_order }}
					<ul>
						<li><a href="{{ link.link_url }}">{{ link.link_title }}</a></li>
					</ul>
					{{ end-each }}
				</div>
			</div>
		</div>
	</div>
</div>

<div id="promotions">
	<div class="cr">
		<div class="cc">
			{{ include inner-page-hero }}
		</div>
	</div>
	{{ include sectionlinks }}
	<div class="container">
		<div class="body-content">
			<div class="row">
				<div class="col-md-12">
					<div class="title-border">
						<h1>{{ page.page_title }}</h1>
					</div>
					{{ page.body_text }}
					{{ each promo as deal sort by deal.sort_order }}
					<div class="promo-detail">
						<img src="{{ deal.promo_image.getImage(800) }}">
						<p class="large">{{ deal.promo_title }}</p>
						<p>{{ deal.promo_description }}</p>
						<p>Promo code: {{ deal.promo_code }}</p>
						<a href"{{ deal.promo_print_coupon }}" target="blank">Click for printable coupon</a>

					</div>
					{{ end-each }}

				</div>
			</div>
		</div>
	</div>
</div>

<div id="meet-the-team">
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
					{{ page.body_text }}
					{{ each employee_category as ec sort by ec.sort_order }}
					<h3>{{ ec.employee_category }}</h3>
					<hr/>
					<div class="row">
						{{ each employees as employee where employee.employee_category = '{ec.zuid}' sort by employee.sort_order }}
						{{ if {page.number_of_cols} == 12 && {index} % 1 = 0 && {index} != 1 }}
					</div>
					<div class="row">
						{{ else if {page.number_of_cols} == 6 && {index} % 2 = 1 && {index} != 1 }}
					</div>
					<div class="row">
						{{ else if {page.number_of_cols} == 4 && {index} % 3 = 1 && {index} != 1 }}
					</div>
					<div class="row">
						{{ else if {page.number_of_cols} == 3 && {index} % 4 = 1 && {index} != 1 }}
					</div>
					<div class="row">
						{{ else if {page.number_of_cols} == 2 && {index} % 6 = 1 && {index} != 1 }}
					</div>
					<div class="row">
						{{ end-if }}
						<div class="col-md-{{ page.number_of_cols }} borderline">
							<img src="{{ employee.employee_photo.getImage(700,700,crop) }}" alt="{{ employee.employee_first_name}} {{ employee.employee_last_name }} photo">
							<h4>{{ employee.employee_first_name}} {{employee.employee_last_name}}</h4>
							<p>{{ employee.employee_bio }}</p>
						</div>
						{{ end-each }}
					</div>
					{{ end-each }}
				</div>
			</div>
		</div>
	</div>
</div>

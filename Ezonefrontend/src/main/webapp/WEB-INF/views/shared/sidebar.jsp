
	<h1 class="my-4">Shop By Category</h1>
	<div class="list-group">

		<c:forEach itmes="${categories}" var="category">
		
		
			<a href="#" class="list-group-item">${category.name}</a>
		
		
		
		</c:forEach>

		
			
	</div>

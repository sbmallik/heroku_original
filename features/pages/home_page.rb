class HomePage
	include PageObject

	page_url ui_url '/'

	divs(:puppy_name, class: 'name')
	buttons(:view_detail, value: 'View Details')

	def select_puppy(name = 'Brook')
		index = puppy_names.index(name)
		view_detail_elements[index].click
	end

	private

	def puppy_names
		puppy_name_elements.map(&:text)
	end
end

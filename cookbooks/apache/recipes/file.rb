file ' www' do
	path '/var/www/html/index.html'
	content 'hello world!'
	mode '0755'
	owner 'apache'
	group 'apache'
end

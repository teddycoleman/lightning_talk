class ChartsController < ApplicationController
	require 'gchart'
	
	def index
		@line_chart =  Gchart.line(  :size => '600x300', 
              :title => "SP 500 Closing Prices in October",
              :legend => ['Prices'],
              :data => [2126,2126,2133,2139,2143,2151,2141,2141,2144,2139,2126,2132,2132,2139,2136,2163,2153,2160,2159,2150,2161],
              :axis_with_labels => ['y'], 
              :axis_range => [[2100, 2200, 100]]
              )


	# This is the example from the googlechart gem page on how to set a 
	# custom axis range EXCEPT it's broken.  If you run this code, the
	# y axis SAYS it starts at 2 but it actually starts at 0. You can
	# tell because the last data point of 2 occurs above the bottom axis.
	#
	# 	 Gchart.line( :data => [17, 17, 11, 8, 2], 
  #             :axis_with_labels => ['x', 'y'], 
  #             :axis_labels => [['J', 'F', 'M', 'A', 'M']], 
  #             :axis_range => [nil, [2,17,5]])

		@pie_chart = Gchart.pie(
			:title => "Pyramid",
			:data => [75,20,5],
			:legend => ['Sky', 'Sunny side of the pyramid', 'Shady side of the pyramid'],
			:size => '600x400',
			:bar_color => ['00BFFF','ffee94', 'b7a563'],
			:custom => "chp=2.355"
			)

		@bar_chart = Gchart.bar(
			:size => '700x300', 
			:title => "Length of a Minute",
			:data => [6, 4, 3, 1, 0.5], 
			:axis_with_labels => ['x','y'],
			:axis_labels => [['Microwave Minute','End of Work Day Minute', 'Standard Minute','Sleep Minute','Internet Minute'],['Minute length']], 
			:bar_width_and_spacing => [50, 70])
	end
end

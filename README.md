# Google Charts

Making things like Pie Charts, Line Charts, etc with Google's charting API. Charts and other 
visualization tools make things pretty. Google's is commonly used, although there are many
others as well that are worth looking into.  Making visualization is fairly straightforward,
like these examples:

Gemfile:
gem "googlecharts", :require => "gchart"

Ruby file: 
require 'gchart'

Gchart.line(  :size => '600x300', <br>
              :title => "SP 500 Closing Prices in October",<br>
              :legend => ['Prices'],<br>
              :data => [2126,2126,2133,2139,2143,2151,2141,2141,2144,2139,2126,2132,2132,2139,2136,2163,2153,2160,2159,2150,2161],<br>
              :axis_with_labels => ['y'], <br>
              :axis_range => [[2100, 2200, 100]]<br>
              )

Gchart.pie(
			:title => "Pyramid",<br>
			:data => [75,20,5],<br>
			:legend => ['Sky', 'Sunny side of the pyramid', 'Shady side of the pyramid'],<br>
			:size => '600x400',<br>
			:bar_color => ['00BFFF','ffee94', 'b7a563'],<br>
			:custom => "chp=2.355"<br>
			)
     
@bar_chart = Gchart.bar(
			:size => '700x300', <br>
			:title => "Length of a Minute",<br>
			:data => [6, 4, 3, 1, 0.5], <br>
			:axis_with_labels => ['x','y'],<br>
			:axis_labels => [['Microwave Minute','End of Work Day Minute', 'Standard Minute','Sleep Minute','Internet Minute'],['Minute length']], <br>
			:bar_width_and_spacing => [50, 70]<br>
			)           
			
View file:
<%= image_tag(@pie_chart) %><br>

Full documentation here: https://github.com/mattetti/googlecharts

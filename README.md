# Google Charts

Making things like Pie Charts, Line Charts, etc with Google's charting API. Charts and other 
visualization tools make things pretty. Google's is commonly used, although there are many
others as well that are worth looking into.  Making visualization is fairly straightforward,
like these examples:

Gchart.line(  :size => '600x300', 
              :title => "SP 500 Closing Prices in October",
              :legend => ['Prices'],
              :data => [2126,2126,2133,2139,2143,2151,2141,2141,2144,2139,2126,2132,2132,2139,2136,2163,2153,2160,2159,2150,2161],
              :axis_with_labels => ['y'], 
              :axis_range => [[2100, 2200, 100]]
              )

Gchart.pie(
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


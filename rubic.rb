$top = ['red','red','red','red','red','red','red','red','red',]
$side1 = ['green','green','green','green','green','green','green','green','green',]
$side2 = ['yellow','yellow','yellow','yellow','yellow','yellow','yellow','yellow','yellow',]
$side3 = ['white','white','white','white','white','white','white','white','white',]
$side4 = ['orange','orange','orange','orange','orange','orange','orange','orange','orange',]
$bottom = ['blue','blue','blue','blue','blue','blue','blue','blue','blue',]

#top = top face = red
#side1 = front face = green
#side2 = left face = yellow
#side3 = back face = white
#side4 = right face = orange
#bottom = bottom face = blue



def twist_right_column

	a1 = $side4[0]
	a2 = $side4[1]
	a3 = $side4[2]
	a4 = $side4[3]
	a5 = $side4[4]
	a6 = $side4[5]
	a7 = $side4[6]
	a8 = $side4[7]
  a9 = $side4[8]
	$side4.insert(0, *a3)
	$side4.insert(1, *a6)
	$side4.insert(2, *a9)
	$side4.insert(3, *a2)
	$side4.insert(4, *a5)
	$side4.insert(5, *a8)
	$side4.insert(6, *a1)
	$side4.insert(7, *a4)
	$side4.insert(8, *a7)

	a1 = $top[2]
	a2 = $top[5]
	a3 = $top[8]
	b1 = $side1[2]
  b2 = $side1[5]
	b3 = $side1[8]
	c1 = $bottom[2] 
	c2 = $bottom[5] 
	c3 = $bottom[8]
	d1 = $side3[2] 
	d2 = $side3[5] 
	d3 = $side3[8]

	$top.insert(2, *d1)
	$top.insert(5, *d2)
	$top.insert(8, *d3)
	$side1.insert(2, *a1)
	$side1.insert(5, *a2)
	$side1.insert(8, *a3)
	$bottom.insert(2, *b1)
	$bottom.insert(5, *b2)
	$bottom.insert(8, *b3)
	$side3.insert(2, *c1)
	$side3.insert(5, *c2)
	$side3.insert(8, *c3)

	print_cube
	user_input
end
def twist_left_column

	a1 = $side2[0]
	a2 = $side2[1]
	a3 = $side2[2]
	a4 = $side2[3]
	a5 = $side2[4]
	a6 = $side2[5]
	a7 = $side2[6]
	a8 = $side2[7]
  a9 = $side2[8]
	$side2.insert(0, *a3)
	$side2.insert(1, *a6)
	$side2.insert(2, *a9)
	$side2.insert(3, *a2)
	$side2.insert(4, *a5)
	$side2.insert(5, *a8)
	$side2.insert(6, *a2)
	$side2.insert(7, *a3)
	$side2.insert(8, *a7)

	a1 = $top[0]
	a2 = $top[3]
	a3 = $top[6]
	b1 = $side1[0]
  b2 = $side1[3]
	b3 = $side1[6]
	c1 = $bottom[0]
	c2 = $bottom[3] 
	c3 = $bottom[6]
	d1 = $side3[0] 
	d2 = $side3[3] 
	d3 = $side3[6]
	
	$top.insert(0, *d1)
	$top.insert(3, *d2)
	$top.insert(6, *d3)
	$side1.insert(0, *a1)
	$side1.insert(3, *a2)
	$side1.insert(6, *a3)
	$bottom.insert(0, *b1)
	$bottom.insert(3, *b2)
	$bottom.insert(6, *b3)
	$side3.insert(0, *c1)
	$side3.insert(3, *c2)
	$side3.insert(6, *c3)

	print_cube
	user_input
end


def twist_top_row

	a1 = $bottom[0]
	a2 = $bottom[1]
	a3 = $bottom[2]
	a4 = $bottom[3]
	a5 = $bottom[4]
	a6 = $bottom[5]
	a7 = $bottom[6]
	a8 = $bottom[7]
  a9 = $bottom[8]
	$bottom.insert(0, *a7)
	$bottom.insert(1, *a4)
	$bottom.insert(2, *a1)
	$bottom.insert(3, *a8)
	$bottom.insert(4, *a5)
	$bottom.insert(5, *a2)
	$bottom.insert(6, *a9)
	$bottom.insert(7, *a6)
	$bottom.insert(8, *a3)

	slide1 = $side1.slice!(0,3)
	slide2 = $side2.slice!(0,3)
	slide3 = $side3.slice!(0,3)
	slide4 = $side4.slice!(0,3)
	$side2.insert(0, *slide1)
	$side3.insert(0, *slide2)
	$side4.insert(0, *slide3)
	$side1.insert(0, *slide4)

	print_cube
	user_input
end

def twist_bottom_row

	a1 = $top[0]
	a2 = $top[1]
	a3 = $top[2]
	a4 = $top[3]
	a5 = $top[4]
	a6 = $top[5]
	a7 = $top[6]
	a8 = $top[7]
  a9 = $top[8]
	$top.insert(0, *a7)
	$top.insert(1, *a4)
	$top.insert(2, *a1)
	$top.insert(3, *a8)
	$top.insert(4, *a5)
	$top.insert(5, *a2)
	$top.insert(6, *a9)
	$top.insert(7, *a6)
	$top.insert(8, *a3)

	slide1 = $side1.slice!(7,3)
	slide2 = $side2.slice!(7,3)
	slide3 = $side3.slice!(7,3)
	slide4 = $side4.slice!(7,3)
	$side2.insert(7, *slide1)
	$side3.insert(7, *slide2)
	$side4.insert(7, *slide3)
	$side1.insert(7, *slide4)
	
	print_cube
	user_input
end


def print_cube
	cube = {:top=>$top,:front=>$side1,:left=>$side2,:back=>$side3,:right=>$side4,:bottom=>$bottom}
	cube.keys.each do |face|
		(0..2).each {|row| puts cube[face].slice(row*3,3).join('     ').collect.to_s}
		puts ""
	end
end


def user_input
	puts 'what do you want to do
	1. twist top row 
	2. twist bottom row
	3. twist left column
	4. twist right column
	5. exit program'
	input = gets.strip
	if input == '1'
		twist_top_row
	elsif input == '2'
		twist_bottom_row
	elsif input == '3'
		twist_left_column
	elsif input == '4'
		twist_right_column
	elsif input == '5'
		exit
	else
		puts 'wrong input'
		user_input
	end
end

user_input




// Different ways to include
#include <iostream>		// for c++ std lib
#include <stdlib.h>		// for C std lib
#include "myHeader.h" // for local headers


// Better than #define?
static const int n_max = 40;


// Different ways to print out
std::cout << "Mandelbrot-Test!\n" << "Image Size: "<<width<<"x"<<height<<"\n";
printf("Text%i\n", n_max);


// Loops
while (abs(z) < 2 && n <= n_max)
{
	z = z * z + c;
	n++;
}
for (int j = 0; j < height; j++)
{
	int val = calcMandelbrotValue(i, j);
	img << val << " " << 0 << " " << 0 << "\n";
}


// Small if-statements
if (n < n_max) return (255*n)/n_max;
else return 20;


// Write an image to a ppm file (in text, line by line)
int main()
{
	float width = 400;
	float height = 400;
	std::ofstream img ("mandlebrot.ppm");
	if (img.is_open())
	{
		img << "P3\n" << width << " " << height << " 255\n";
		for (int i = 0; i < width; i++)
		{
			for (int j = 0; j < height; j++)
			{
				int val = calcMandelbrotValue(i, j);
				img << val << " " << 0 << " " << 0 << "\n";
			}
		}
		img.close();
	}
	else std::cout << "Could not open file!";
}

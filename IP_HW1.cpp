#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <opencv/cxcore.h>

int main()
{
	IplImage *srcImg = cvLoadImage("5_resize.jpg", 0);
	if ( srcImg == NULL ) {
		return -1;
	}
	IplImage* new_img = cvCreateImage(cvSize(600, 400), srcImg->depth, srcImg->nChannels);
	cvResize(srcImg, new_img);
	
    cvShowImage( "Source", srcImg );
    cvShowImage( "Result", new_img );

    cvWaitKey(0);
	
	cvSaveImage("5_600by400.jpg", new_img);

    cvReleaseImage( &srcImg );
    cvReleaseImage( &new_img );
	
	return 0;
}

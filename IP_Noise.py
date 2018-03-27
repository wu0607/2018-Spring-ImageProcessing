import numpy as np
import random
import cv2

def sp_noise(image,prob):
#Add salt and pepper noise to image
#prob: Probability of the noise
	output = np.zeros(image.shape,np.uint8)
	thres = 1 - prob 
	for i in range(image.shape[0]):
		for j in range(image.shape[1]):
			rdn = random.random()
			if rdn < prob:
				output[i][j] = 0
			elif rdn > thres:
				output[i][j] = 255
			else:
				output[i][j] = image[i][j]
	return output

image = cv2.imread('5_resize.jpg',0) # Only for grayscale image
#noise_img = sp_noise(image,0.05)
#cv2.imwrite('4_darker.jpg', noise_img)

#median = cv2.medianBlur(image,3)
#cv2.imwrite('4_darker.jpg', median)

#eqa = cv2.equalizeHist(image)
#eqa = np.hstack((image,eqa)) #stacking images side-by-side
#cv2.imwrite('5_brighter_global_histequ.jpg', eqa)

# create a CLAHE object (Arguments are optional).
clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8,8))
cl1 = clahe.apply(image)
# cl1 = np.hstack((image,cl1))
cv2.imwrite('5_brighter_local_histequ.jpg', cl1)
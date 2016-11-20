// Interface module
// Converts matrix of 512x8 into an array of matrix of 8x8
#include<systemc.h>
#include<Constants.h>

SC_MODULE(blocker_512)
{
	float * AxB_F(float M1[B * B], const float M2[B * B])
	{
		float TMP[B * B];
		for (int k = 0; k < B; k++) {
			for (int i = 0; i < B; i++) {
				TMP[i + k*B] = 0;
				for (int j = 0; j < B; j++) {
					TMP[k*B + i] += ((float)M1[j + k*B]) * M2[i + j*B];
				}
			}
		}
		copy_F(TMP, M1, B * B);
		return M1; //Returns the pointer of the firts parameter variable that also contains the result to allow recursive calls
	}
	// F variant accepts float as second matrix
	//Modifies ther first parameter pushing in the result, correspond to A
	float * BxA_F(float M1[B * B], const float M2[B * B])
	{
		float TMP[B * B];
		for (int k = 0; k < B; k++) {
			for (int i = 0; i < B; i++) {
				TMP[i + k*B] = 0;
				for (int j = 0; j < B; j++) {
					TMP[k*B + i] += (M2[j + k*B]) * M1[i + j*B];
				}
			}
		}
		copy_F(TMP, M1, B * B);
		return M1; //Returns the pointer of the firts parameter variable that also contains the result to allow recursive calls
	}
};

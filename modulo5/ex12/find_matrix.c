#include <stdlib.h>

int find_matrix(int **m, int y, int k, int num) {

    for (int i = 0; i < y; i++) {

        for (int j = 0; j < k; j++) {
            // element == num
            if (m[i][j] == num) {
                // return 1 if num was found
                return 1;
            }
        }
    }

    // return 0 if num was not found
    return 0;
}

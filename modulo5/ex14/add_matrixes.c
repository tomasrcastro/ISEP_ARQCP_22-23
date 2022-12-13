#include <stdlib.h>

int **add_matrixes(int **a, int **b, int y, int k) {

    int **res = malloc(y * sizeof(int *));
    for (int i = 0; i < y; i++) {
        res[i] = malloc(k * sizeof(int));
    }

    for (int i = 0; i < y; i++) {
        for (int j = 0; j < k; j++) {
            res[i][j] = a[i][j] + b[i][j];
        }
    }

    return res;
}

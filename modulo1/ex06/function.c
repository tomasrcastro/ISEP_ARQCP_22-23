void power_ref(int* x, int y) {
    int result = 1;

//se y = 0, x = 1

    if (y == 0) {
        *x = 1;
    } else if (y < 0) { //y < 0; x = 0
        *x = 0;
    } else {
        for (int i = 0; i < y; i++) { //multiplica x y vezes
            result *= *x;
        }
        *x = result;
    }
    
}

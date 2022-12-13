#include <stdio.h>

void upper2(char *str){
	for (int i = 0; *(str + i)!='\0'; i++) {
      if(*(str + i) >= 'a' && *(str + 1) <= 'z') {
         *(str + i) = *(str + i) - 32;
      }
   }
}

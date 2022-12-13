#include <stdio.h>
#include <stdlib.h>
#include "decifra_chars.h"
#include "decifra_texto.h"
#include "struct.h"

int main(void) {
    Cifra cifra1;
    int chave = 31532;
    int tamanho1=7;
    short* textoC1=(short*) calloc(tamanho1,sizeof(short));
    char* textoOG1=(char*)calloc(2*tamanho1+1,sizeof(char));
    
    Cifra cifra2;
    int tamanho2=7;
    short* textoC2=(short*)calloc(tamanho2,sizeof(short));
    char* textoOG2=(char*)calloc(2*tamanho2+1,sizeof(char));
    
    short textoCopy1[7]={12105, 2136, 7692, 8009, 23405, 10621, 14460};
    short textoCopy2[7]={15956, 6721, 7692, 8009, 23405, 10621, 14460};

    for(int i=0;i<tamanho1;i++){
        *(textoC1+i)=textoCopy1[i];
        *(textoC2+i)=textoCopy2[i];
    }

    cifra1.tamanho_cifrado=tamanho1;
    cifra1.texto_cifrado=textoC1;
    cifra1.texto_original=textoOG1;

    cifra2.tamanho_cifrado=tamanho2;
    cifra2.texto_cifrado=textoC2;
    cifra2.texto_original=textoOG2;
    
    decifra_string(&cifra1, chave);
    decifra_string(&cifra2, chave);
    printf("Cifra 1: %s",cifra1.texto_original);
    printf("\nCifra 2: %s\n",cifra2.texto_original);

    free(textoC1);
    free(textoOG1);
    free(textoC2);
    free(textoOG2);

    return 0;
}

#include <stdio.h>
#include <stdlib.h>

// define o no da stack data
typedef struct Node {
    long value;
    struct Node *next;
} Node;

// define a estrutura da stack data
typedef struct Stack {
    Node *head;
    int size;
} Stack;

// cria uma nova stack
Stack *stack_new() {
    Stack *stack = malloc(sizeof(Stack));
    stack->head = NULL;
    stack->size = 0;
    return stack;
}

// da push de um valor na stack
void stack_push(Stack *stack, long value) {
    // cria um novo node
    Node *node = malloc(sizeof(Node));
    node->value = value;
    node->next = stack->head;

    // atualiza o topo da stack
    stack->head = node;
    stack->size++;
}

long stack_pop(Stack *stack) {
    // verifica se a stack estÃ¡ vazia
    if (stack->head == NULL) {
        printf("Error: stack is empty\n");
        exit(1);
    }

    // pega o valor do topo da stack
    long value = stack->head->value;

    // remove the top node
    Node *node = stack->head;
    stack->head = node->next;
    stack->size--;
    free(node);

    return value;
}

// retorna o tamanho da stack
int stack_size(Stack *stack) {
    return stack->size;
}

// verifica se a stack estÃ¡ vazia
int stack_is_empty(Stack *stack) {
    return stack->size == 0;
}

// liberta a memÃ³ria usada pela stack
void stack_free(Stack *stack) {
    Node *node = stack->head;
    while (node != NULL) {
        Node *next = node->next;
        free(node);
        node = next;
    }
    free(stack);
}

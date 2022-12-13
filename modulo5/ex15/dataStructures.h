typedef struct Node {
    long value;
    struct Node *next;
} Node;

typedef struct Stack {
    Node *head;
    int size;
} Stack;

Stack *stack_new();

void stack_push(Stack *stack, long value);

long stack_pop(Stack *stack);

int stack_size(Stack *stack);

int stack_is_empty(Stack *stack);

void stack_free(Stack *stack);

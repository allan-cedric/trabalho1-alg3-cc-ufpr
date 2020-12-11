#include "ArvoreAVL/avl.h"

/* Impressão emOrdem da árvore AVL */
void printInOrder(AVL *root, int level);

int main()
{
    /* Inicialização da árvore AVL */
    AVL *rootAVL = createAVL();

    /* Inputs na árvore */
    char opInput;
    int keyInput;
    while (!feof(stdin))
    {
        fscanf(stdin, "%c %i\n", &opInput, &keyInput);
        if (opInput == 'i')
            rootAVL = insertNodeAVL(rootAVL, keyInput);
        else if (opInput == 'r')
            rootAVL = removeNodeAVL(rootAVL, keyInput);
        else
            fprintf(stdout, "Operação inválida\n");
    }

    /* Output esperado */
    printInOrder(rootAVL, -1);

    rootAVL = destroyAVL(rootAVL);
    rootAVL = NULL;

    return 0;
}

void printInOrder(AVL *root, int level)
{
    if (root)
    {
        level++;
        printInOrder(root->left, level);
        fprintf(stdout, "%i,%i\n", root->key, level);
        printInOrder(root->right, level);
    }
}
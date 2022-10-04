#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct Node{
    int key;
    // int value;
    struct Node* left;
    struct Node* right;
} Node;

Node* newnode(int key){

    Node* node = (Node*) malloc(sizeof(Node));
    node -> left = NULL;
    node -> right = NULL;
    node -> key  = key;
    return node;
}

void printTree(Node* root){
    if(root == NULL) return;
    else {
        printTree(root->left);
        printf("%d, ",root->key);
        printTree(root->right);
    }
}

bool addnode(Node* root, int key){
    if(root == NULL){
        Node* node = newnode(key);
    }
    else if(key > root -> key) {
            if(root -> right == NULL)
                root -> right = newnode(key);
            
            else
                addnode(root->right,key); 
        }
        else{
            if(root->left == NULL)
                root -> left = newnode(key);
            else
                addnode(root->left, key);
        }
        return true;
}

Node* treeOf(int list[], size_t size){

    Node* root = newnode(list[0]);
    for(size_t i = 1; i < size; i++){
        addnode(root, list[i]);
    }
    
    return root;
}

int main(int argc, char** argv){
    int list[] = {2,5,4,7,1,10,13,16,44,62,66,98,120,12};
    size_t size = sizeof(list) / sizeof(int);
    Node* tree = treeOf(list, size);
    printTree(tree);
}




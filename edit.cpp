#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_LENGTH 1000
void editText() {
    char text[MAX_LENGTH];
    printf("������Ҫ�༭���ı������ %d���ַ�����\n", MAX_LENGTH - 1);
    fgets(text, MAX_LENGTH, stdin);
    text[strcspn(text, "\n")] = '\0';
    int choice;
    do {
        printf("1. ��ʾ�ı�\n");
        printf("2. �޸��ı�\n");
        printf("3. �˳�\n");
        scanf("%d", &choice);
        getchar(); 
        switch (choice) {
        case 1:
            printf("��ǰ�ı�Ϊ��%s\n", text);
            break;
        case 2:
            printf("�������µ��ı���\n");
            fgets(text, MAX_LENGTH, stdin);
            text[strcspn(text, "\n")] = '\0';
            break;
        case 3:
            break;
        default:
            printf("��Ч��ѡ�����������롣\n");
        }
    } while (choice!= 3);
}
int main() {
    editText();
    return 0;
}

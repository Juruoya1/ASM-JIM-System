#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_LENGTH 1000
void editText() {
    char text[MAX_LENGTH];
    printf("请输入要编辑的文本（最多 %d个字符）：\n", MAX_LENGTH - 1);
    fgets(text, MAX_LENGTH, stdin);
    text[strcspn(text, "\n")] = '\0';
    int choice;
    do {
        printf("1. 显示文本\n");
        printf("2. 修改文本\n");
        printf("3. 退出\n");
        scanf("%d", &choice);
        getchar(); 
        switch (choice) {
        case 1:
            printf("当前文本为：%s\n", text);
            break;
        case 2:
            printf("请输入新的文本：\n");
            fgets(text, MAX_LENGTH, stdin);
            text[strcspn(text, "\n")] = '\0';
            break;
        case 3:
            break;
        default:
            printf("无效的选择，请重新输入。\n");
        }
    } while (choice!= 3);
}
int main() {
    editText();
    return 0;
}

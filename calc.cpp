#include <stdio.h>

int main() {
    double num1, num2;
    char op;

    printf("�������һ������: ");
    scanf("%lf", &num1);

    printf("�����������(+��-��*��/): ");
    scanf(" %c", &op);

    printf("������ڶ�������: ");
    scanf("%lf", &num2);

    switch (op) {
        case '+':
            printf("���: %.2lf\n", num1 + num2);
            break;
        case '-':
            printf("���: %.2lf\n", num1 - num2);
            break;
        case '*':
            printf("���: %.2lf\n", num1 * num2);
            break;
        case '/':
            if (num2!= 0) {
                printf("���: %.2lf\n", num1 / num2);
            } else {
                printf("��������Ϊ0!\n");
            }
            break;
        default:
            printf("��Ч�������!\n");
    }

    return 0;
}

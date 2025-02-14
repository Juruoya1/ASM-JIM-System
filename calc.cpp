#include <stdio.h>

int main() {
    double num1, num2;
    char op;

    printf("请输入第一个数字: ");
    scanf("%lf", &num1);

    printf("请输入运算符(+、-、*、/): ");
    scanf(" %c", &op);

    printf("请输入第二个数字: ");
    scanf("%lf", &num2);

    switch (op) {
        case '+':
            printf("结果: %.2lf\n", num1 + num2);
            break;
        case '-':
            printf("结果: %.2lf\n", num1 - num2);
            break;
        case '*':
            printf("结果: %.2lf\n", num1 * num2);
            break;
        case '/':
            if (num2!= 0) {
                printf("结果: %.2lf\n", num1 / num2);
            } else {
                printf("除数不能为0!\n");
            }
            break;
        default:
            printf("无效的运算符!\n");
    }

    return 0;
}

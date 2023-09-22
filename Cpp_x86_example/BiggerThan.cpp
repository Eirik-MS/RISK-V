int a = 2;
int b = 2;

int c = 4;
int d = 5;

int e = 8;
int f = 9;



int main(){  
    int sum_a = a + b;
    int sum_c = c + d;
    int sum_e = e + f;

    if (sum_a > sum_c){
        a = sum_a;
    }else if (sum_c < sum_e){
        a = sum_e;
    }else{
        a = sum_c;
    }
}
#include <bits/stdc++.h>
#include <cmath>
#include <chrono>
using namespace std::chrono;

__global__ void cuda_hello(){
  printf("Hello World from GPU \n");
}
using namespace std;
int main () {
 cout<<"Input number of elements: ";
 int n;
 cin>>n;
 vector<int> arr1(n);
 vector<int> arr2(n);
 vector<int> res(n);
 auto start= high_resolution_clock::now();
 for(int i=0;i<n;i++){
  arr1[i] = rand()%10000+1;
  arr2[i] = rand()%10000+1;
  res[i]= arr1[i]+arr2[i];
 }
 auto stop= high_resolution_clock::now();
 auto duration = duration_cast<microseconds>(stop-start);
 cout<<"Time taken: "<< duration.count()<<endl;
 return 0;
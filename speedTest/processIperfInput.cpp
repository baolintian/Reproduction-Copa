#include <bits/stdc++.h>
#include <sstream>
using namespace std;


int main(int argc, char ** argv)
{
    freopen("cubic2.txt", "r", stdin);
    freopen("cubic2_out.txt", "w", stdout);
    string line;

    while(getline(cin, line)){
        stringstream ss(line);
        int cnt = 0;
        double ans;
        string now;
        bool flag = false;
        while(ss>>now){
            cnt++;
            if(cnt == 6){
                ss>>ans;
                //cout<<ans<<endl;
                flag = true;
            }
            if(flag){


                ss>>now;
                if(now[0] == 'K'){
                    ans /= 1000;
                }
                else if(now[0] == 'G'){
                    ans *= 1000;
                }
                cout<<ans<<endl;
                flag = false;
            }

        }
    }
    return 0;
}

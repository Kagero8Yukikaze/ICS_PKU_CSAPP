#include <iostream>
#include <algorithm>
#include <cstring>
#include <string>

using namespace std;

const int MAX = 1e5;
char s[1010][50];
int trie[MAX][30];
int vis[MAX];
int cnt = 1;

void add(char s[]){
    int len = strlen(s);
    int root = 0;
    for(int i = 0; i < len; i++){
        int id = s[i]-'a';
        if(!trie[root][id])
            trie[root][id] = cnt++;
        root = trie[root][id];
        vis[root]++;
    }

}

string find(char s[]){
    string ans;
    int root = 0;
    int len = strlen(s);
    for(int i = 0; i < len; i++){
        if(vis[root] == 1)
            return ans;
        int id = s[i] - 'a';
        ans += s[i];
        root = trie[root][id];
    }
    return ans;
}
int main(){
    int n=0;
    while(scanf("%s",s[n]) != EOF){
        add(s[n]);
        n++;
    }
    for(int i=0; i<n; i++){
        cout << s[i] << " "<< find(s[i]) << endl;
    }
    return 0;
}


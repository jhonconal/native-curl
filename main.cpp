/*************************************************************************
> File Name: main.cpp
> Author: jhonconal
> Mail: jhonconal2016@gmail.com
> Created Time: Tuesday, April 21, 2020 AM08:53:50 UTC
> Copyright (C) 2019 jhonconal,All Rights Reserved.
************************************************************************/
#include <curl/curl.h>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

int main(int argc,char * argv[])
{
#if 1
    std::cout<<"Hello,Cross CURL"<<endl;
    //定义CURL类型的指针
    CURL * curl;
    //定义CURLcode类型的变量，保存返回状态码
    CURLcode res;

    //初始化一个CURL类型的指针
    curl = curl_easy_init();
    if(curl!=NULL)
    {

        curl_easy_setopt(curl, CURLOPT_URL, argv[1]);        
        //curl_easy_setopt(curl, CURLOPT_WRITEDATA, recv);

        res = curl_easy_perform(curl);
        if(res != CURLE_OK){
            cout << curl_easy_strerror(res) << endl;
        }

        //清除curl操作.
        curl_easy_cleanup(curl);
    }
#else
    vector<string> mvector ;
    mvector.push_back("1111");
    mvector.push_back("2222");
    mvector.push_back("3333");
    mvector.push_back("4444");
    for(int i=0;i<mvector.size();i++)
        cout<<mvector.at(i)<<endl;
    cout<<"Hello,World!"<<endl;
#endif
    return 0;
}

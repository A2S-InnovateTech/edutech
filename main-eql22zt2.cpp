#include <iostream>

using namespace std;

int main()
{
    int b,n;
    float c1, c2;
    cout << "Enter budget for your party" << endl;
    cin>>b;
        cout << "Cost per slice of pizza" << endl;
        cin>>c1;
    cout << "Cost per whole pizza pie(8 slices)" << endl;
    cin>>c2;
    cout << "How many people will be attending your party" << endl;
    cin>>n;
    int sum=0;
    int slice, pie,x;
    for(int i=0;i<n;i++)
    {cout << "Enter number of slices for person"<<i+1<< endl;
    cin>>x;
    sum+=x;
    }
    pie=sum/8;
    slice=sum%8;
    float price1=pie*c2;
    float price2=slice*c1;
    float final=price1+price2;

    if(final<b)
    {cout<<"You should purchase "<<pie<<" pies and "<<slice<<" slices"<<endl;
    cout<<"Your total cost will be "<<final<<endl;
    cout<<"You will still have "<<(b-final)<<" left after your order"<<endl;
    }
    else if(final==b)
    {cout<<"You should purchase "<<pie<<" pies and "<<slice<<" slices"<<endl;
    cout<<"Your total cost will be "<<final<<endl;
    cout<<"You will have no money left after your order"<<endl;
    }

    else if(final>b)
    {
    cout<<"Your order cannot be completed."<<endl;
    cout<<"You would need to purchase "<< pie<<" pies and   "<< slice<<" slices"<<endl;
    cout<<"This would put you over budget by "<<(final-b)<<endl;

        }

    return 0;
}

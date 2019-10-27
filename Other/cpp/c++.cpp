#include <iostream>
#include "Book.cpp"
using namespace std;

void swapBook(Book*, Book*);
void quickSort(Book[], int, int);
int partition(Book[], int, int);

Book insertNewBook(){
    int bookID;
    string bookName;
    string isbn;

    Book book;
    cout<<"Please Enter BookID: ";
    cin >>bookID;
    cout<<"Please Enter BookName: ";
    cin >> bookName;
    cout<<"Please Enter BookISBN: ";
    cin >> isbn;

    book.SetBookISBN(isbn);
    book.SetBookName(bookName);
    book.SetBookID(bookID);

    return book;
}

int main()
{
    int count;
    cout<<"How Many Book instance do you create? ";
    cin >>count;

    Book arr[count];

    for(int i=0; i<count; i++){
        arr[i] = insertNewBook();
    }

    int n = sizeof(arr) / sizeof(arr[0]);
    quickSort(arr, 0, n - 1);
    cout << "\n\n--------- SORTED ARRAY --------- \n";
    int i;
    for (i = 0; i < sizeof(arr); i++)
        cout <<"["<<arr[i].GetBookID() << "] "<<arr[i].GetBookName()<<" ,"<<arr[i].GetISBN()<<endl;
    cout << "\n\n-------------------------------- \n";
    return 0;
}

void swapBook(Book* a, Book* b)
{
    Book t = *a;
    *a = *b;
    *b = t;
}

int partition (Book arr[], int low, int high)
{
    Book pivot = arr[high];
    int i = (low - 1);

    for (int j = low; j <= high - 1; j++)
    {

        if (arr[j].GetBookID() < pivot.GetBookID())
        {
            i++;
            swapBook(&arr[i], &arr[j]);
        }
    }
    swapBook(&arr[i + 1], &arr[high]);
    return (i + 1);
}


void quickSort(Book arr[], int low, int high)
{
    if (low < high)
    {

        int pi = partition(arr, low, high);

        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

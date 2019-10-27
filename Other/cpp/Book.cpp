using namespace std;
class Book
{
private:
      int bookID;
      string bookName;
      string ISBN;
public:
      int GetBookID(){
        return bookID;
      }
      std::string GetBookName(){
          return bookName;
      }
      std::string GetISBN(){
          return ISBN;
      }
      void SetBookID(int id){
          bookID = id;
      }
      void SetBookName(std::string name){
          bookName = name;
      }
      void SetBookISBN(std::string isbn){
          ISBN = isbn;
      }
Book(){} ~Book(){}
};

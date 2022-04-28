import java.util.Arrays;

public class BeanTest {
    public static void main(String[] args) {

        Album album = new Album();
        Author author = new Author();
        Quote quote = new Quote("Smash", "Win ", 10);
        Quote quote1 = new Quote("Jason", "Win the Code", 11);
        Quote quote2 = new Quote("Calvin", "Woof", 12);
        Quote quote3 = new Quote("Mocha", "Love me", 13);

        Quote[] quotes = new Quote[]{quote};

        Quote[] allQuotes = addQuoteToArray(quotes, quote1);
        readQuotesFromArray(allQuotes);


    }  //  <--END MAIN
    public static Quote[] addQuoteToArray(Quote[] qs, Quote q){
        Quote[] exportQA = new Quote[qs.length +1];
        for (int i = 0; i < exportQA.length; i++) {
            if(i < qs.length) exportQA[i] = qs[i];
            else exportQA[i] = q;
        }
        return exportQA;
    }

    public static void readQuotesFromArray(Quote[] qs){
        for (Quote q : qs) {
            System.out.println(q.getAuthor());
            System.out.println(q.getContent());
            System.out.println("------------------------");
        }
    }


}  //  <--END

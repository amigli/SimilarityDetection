package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CanzoneDAO {
    public List<Canzone> doRetrieveAll(){
        try (Connection con = ConPool.getConnection()) {
            List <Canzone> l = new ArrayList<>();
            Statement stmt=con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM brani");
            while (rs.next()){
                l.add(creaCanzone(rs));
            }
            stmt.close();
            con.close();
            return l;
        } catch (SQLException e) {
            throw new RuntimeException();
        }
    }

    public Canzone doRetrieveById(int id){
        try(Connection con = ConPool.getConnection()){
            PreparedStatement statement =
                    con.prepareStatement("SELECT * from brani where id = ?");

            statement.setInt(1, id);
            ResultSet res =  statement.executeQuery();
            res.next();

            Canzone c = this.creaCanzone(res);
            statement.close();
            con.close();
            return c;
        } catch (SQLException e) {
            throw new RuntimeException();
        }
    }

    public int calcolaEditDistance (String c1, String c2){
        MusicString m1 = new MusicString(c1);
        MusicString m2 = new MusicString(c2);

        int l1 = m1.length();
        int l2 = m2.length();

        //come da teoria, si costruiscono due tabelle
        //una per le distanze, una per le operazioni
        int[][] distanze = new int[l1+1][l2+1];
        int[][] operazioni = new int[l1+1][l2+1];

        //inizializziamo le due matrici
        for (int i=0; i<=l1; i++){
            for (int j=0; j<=l2; j++){
                distanze[i][j]=0;
                operazioni[i][j]='*';
            }
        }

        //inserisco i valori nella tabella DISTANZE
        //prima, la prima riga (corrisponde alle lettere della seconda parola)
        for (int i=0; i<=l1; i++)
            distanze[i][0]=i;

        //poi, la prima colonna (corrisponde alla prima parola)
        for (int j=0; j<=l2; j++)
            distanze[0][j]=j;

        //analizziamo le altre celle
        for (int i=1; i<=l1; i++){
            for (int j=1; j<=l2; j++){
                int d1, d2, d3;

                d1 = distanze[i][j-1]+1;
                d2 = distanze[i-1][j]+1;

                //se i caratteri sono uguali, non fare nulla, quindi prendere il valore della casella precedente
                //altrimenti, incrementa di uno la distanza sempre tenendo presente il valore della casella precedente
                d3 = m1.noteAt(i-1).equals(m2.noteAt(j-1)) ? distanze[i-1][j-1]: distanze[i-1][j-1]+1;

                int min;

                if (d1<d2){
                    if (d1<d3){
                        min=d1;
                        operazioni[i][j]='s';
                    }else{
                        min=d3;
                        operazioni[i][j]='\\';
                    }
                }else{
                    if (d2<d3){
                        min = d2;
                        operazioni[i][j] = 'r';
                    }else{
                        min = d3;
                        operazioni[i][j]= '\\';
                    }
                }
                distanze[i][j]= min;
            }
        }
        return distanze[l1][l2];
    }

    private Canzone creaCanzone (ResultSet res) throws SQLException {
        int id = res.getInt("ID");
        String titolo = res.getString("Titolo");
        String cantante = res.getString("Artista");
        String note = res.getString("Note");
        String noteDurata = res.getString("NoteDurata");
        String intervalli = res.getString("Intervalli");
        String url = res.getString("URL");
        String urlM = res.getString("URLmp");

        Canzone c = new Canzone(id, cantante, titolo, note, noteDurata, intervalli, url, urlM);

        return c;
    }
}


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author huong karatedo
 */
public class NewClass {
    public static void main(String[] args) throws ParseException {
        Date date = java.util.Calendar.getInstance().getTime();
        SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss dd-MM-yyyy");

        String dateString = format.format(date);
//        Date date1 = format.parse("2009-12-31");
        System.out.println(dateString);
    }
}

package mahout;

import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.model.mongodb.MongoDBDataModel;
import org.apache.mahout.cf.taste.impl.recommender.svd.ALSWRFactorizer;
import org.apache.mahout.cf.taste.impl.recommender.svd.SVDRecommender;

import java.net.UnknownHostException;

class MahoutExample {
    public static void main(String[] args) {
        try {
            //all the necessary logic
            MongoDBDataModel dbm = new MongoDBDataModel("127.0.0.1", 27017, "mongoMahoutExample", "ratings", true, true, null);
            SVDRecommender svd = new SVDRecommender(dbm,
                    new ALSWRFactorizer(dbm, 3, 0.05f, 50, false, 40, Runtime.getRuntime().availableProcessors()));

            // print user preferences
            System.out.println("Preferences given by users:");
            LongPrimitiveIterator userIDs = dbm.getUserIDs();
            while (userIDs.hasNext()) {
                long userId = userIDs.nextLong();
                LongPrimitiveIterator itemIDs = dbm.getItemIDs();
                while (itemIDs.hasNext()) {
                    Float preferenceValue = dbm.getPreferenceValue(userId, itemIDs.nextLong());
                    String output = (preferenceValue == null) ? "       " : String.format("%.4f ", preferenceValue);
                    System.out.printf(output);
                }
                System.out.println();
            }
            System.out.println();

            // print estimated preferences
            System.out.println("Preferences estimated by Recommender:");
            userIDs = dbm.getUserIDs();
            while (userIDs.hasNext()) {
                long userId = userIDs.nextLong();
                LongPrimitiveIterator itemIDs = dbm.getItemIDs();
                while (itemIDs.hasNext()) {
                    System.out.printf("%.4f ", svd.estimatePreference(userId, itemIDs.nextLong()));
                }
                System.out.println();
            }
        } catch (UnknownHostException | TasteException e) {
            e.printStackTrace();
        }
    }
}
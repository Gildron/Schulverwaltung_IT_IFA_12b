package de.bs1bt.ams.mvc;

import de.bs1bt.ams.gateways.GeraeteMySQLDAO;
import de.bs1bt.ams.gateways.GeraeteRAMDAO;
import de.bs1bt.ams.gateways.RaumMySQLDAO;
import de.bs1bt.ams.gateways.RaumRAMDAO;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class AMSApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(AMSApplication.class.getResource("/de.bs1bt.ams.mvc/main-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("BS1 BT - Asset Management System");
        stage.setScene(scene);
        stage.show();

        MainController mc = fxmlLoader.getController();
        try {
            mc.setDAO(Platform.SQL);
            mc.zeigeRaeumeInTabelle();
            mc.zeigeGesamtflaeche();
        } catch (Exception e) {
            e.printStackTrace();
        }

        mc.zeigeRaeumeInTabelle();
        mc.zeigeGesamtflaeche();

    }

    public static void main(String[] args) {
        launch();
    }
}
package de.bs1bt.ams.mvc;

import de.bs1bt.ams.model.Raum;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.beans.binding.Bindings;

public class RaumDialogController extends Dialog<Raum> {
    private Raum raumModel;

    @FXML
    private TextField txtBezeichnung;
    @FXML
    private TextField txtGebaeude;
    @FXML
    private TextField txtLaenge;
    @FXML
    private TextField txtBreite;
    @FXML
    private Label lblFlaeche;


    public void setRaum(Raum raumModel) {
        this.raumModel = raumModel;
        txtBezeichnung.setText(raumModel.getBezeichnung());
        txtGebaeude.setText(raumModel.getGebaeude());
        txtLaenge.setText(String.valueOf(raumModel.getLaengeInCm()));
        txtBreite.setText(String.valueOf(raumModel.getBreiteInCm()));
        lblFlaeche.setText(raumModel.getFlaecheInQm() + " m²");

        lblFlaeche.textProperty().bind(Bindings.createStringBinding(() -> {
            double laenge = Double.parseDouble(txtLaenge.getText());
            double breite = Double.parseDouble(txtBreite.getText());
            double flaeche = laenge * breite / 10000.0; // Assuming cm to m conversion
            return String.format("%.2f m²", flaeche);
        }, txtLaenge.textProperty(), txtBreite.textProperty()));

    }

    public Raum getRaum() throws Exception {
        raumModel.setBezeichnung(txtBezeichnung.getText());
        raumModel.setGebaeude(txtGebaeude.getText());
        raumModel.setBreiteInCm(Double.parseDouble(txtBreite.getText()));
        raumModel.setLaengeInCm(Double.parseDouble(txtLaenge.getText()));
        return raumModel;
    }


}

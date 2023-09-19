package de.bs1bt.ams.model;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class RaumTest {
    Raum raum;

    @BeforeEach
    void beforeEach()throws Exception{
        raum = new Raum(1,"Raum","Gebaeude",500,500);
    }


    @Test
    void getLaengeInCm() {
    }


    @Test
    void getFlaecheInQm() {
    }

    @Test
    void setLaengeInCm() throws Exception{
        raum.setLaengeInCm(800.0);
        assertEquals(800.0, raum.getLaengeInCm());
    }
}
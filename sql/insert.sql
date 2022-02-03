-- -----------------------------------------------------
-- Vloží záznamy do tabulky `knihovna`.`knihy`	
-- -----------------------------------------------------
INSERT INTO `knihy`(`id`, `Název`, `Autor`, `Počet_Stran`, `Žánr`, `Status`) VALUES 
(NULL, "The Clockmaker\'s Daughter", 'Kate Morton', '496', 'Román', 'Na Prodejně');

INSERT INTO `knihy`(`id`, `Název`, `Autor`, `Počet_Stran`, `Žánr`, `Status`) VALUES 
(NULL,'Tři temné koruny','Kendare Blake','432','Fantasy','Vypůjčeno');

INSERT INTO `knihy`(`id`, `Název`, `Autor`, `Počet_Stran`, `Žánr`, `Status`) VALUES 
(NULL,'1984','George Orwell','341','Sci-Fi','Vypůjčeno');

INSERT INTO `knihy`(`id`, `Název`, `Autor`, `Počet_Stran`, `Žánr`, `Status`) VALUES 
(NULL,'Šifra mistra Leonarda','Dan Brown','444','Dobrodružné','Na Prodejně');

INSERT INTO `knihy`(`id`, `Název`, `Autor`, `Počet_Stran`, `Žánr`, `Status`) VALUES 
(NULL,'Na západní frontě klid','Erich Maria Remarque','184','Historie','Na Prodejně');

-- -----------------------------------------------------
-- Vloží záznamy do tabulky `knihovna`.`oddělení`	
-- -----------------------------------------------------
INSERT INTO `oddělení`(`id`, `Název`, `Zaměření`) VALUES (NULL,'Oddělení pro dospělé','Pokročilá literatura');
INSERT INTO `oddělení`(`id`, `Název`, `Zaměření`) VALUES (NULL,'Dětské oddělení','Literatura pro studenty');
INSERT INTO `oddělení`(`id`, `Název`, `Zaměření`) VALUES (NULL,'Historické oddělení','Literatura určená pro historiky');

-- -----------------------------------------------------
-- Vloží záznamy do tabulky `knihovna`.`zaměstnanci`	
-- -----------------------------------------------------
INSERT INTO `zaměstnanci`(`id`, `Jméno`, `Příjmení`, `Datum_Narození`) VALUES (NULL, 'Damian', 'Bouška', '1982-08-07');
INSERT INTO `zaměstnanci`(`id`, `Jméno`, `Příjmení`, `Datum_Narození`) VALUES (NULL, 'Nela', 'Kadlecová', '1978-01-25');
INSERT INTO `zaměstnanci`(`id`, `Jméno`, `Příjmení`, `Datum_Narození`) VALUES (NULL, 'Karolína', 'Šťastná', '1990-11-17');
INSERT INTO `zaměstnanci`(`id`, `Jméno`, `Příjmení`, `Datum_Narození`) VALUES (NULL, 'Jindřich', 'Korous', '1979-09-30');
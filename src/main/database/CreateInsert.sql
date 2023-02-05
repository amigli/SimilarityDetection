-- Creo il database canzoni
drop database if exists canzoni;
create database canzoni;
use canzoni;

create table brani(
                      ID int primary key auto_increment,
                      Titolo char (100),
                      Artista char (100),
                      Note varchar (500),
                      NoteDurata varchar (500),
                      Intervalli varchar (500),
                      URL varchar (100),
                      URLmp varchar (100)
);

insert into brani (Titolo, Artista, Note, NoteDurata, Intervalli, URL, URLmp) values
("Lighters [2011]", "Bad Meets Evil ft. Bruno Mars", "C4 C4 C4 C4 D4 E4 G4 C4 C4 C4 D4 E4 A4 G4 C4 C4 D4 D4 B4 C5 G4 G4 E4 A4 C4 C4 C4 D4 E4 G4 C4 C4 D4 E4 A4 G4 C4 C4 D4 D4 B4 C5 G4 G4 E4 A4 F4 F4 F4 F4 F4 F4 E4 E4 D4 C4 F4 F4 F4 F4 E4 E4 D4 C4", "C4o C4o C4o C4o D4o E4o G4q C4o C4o C4o D4o E4o A4o G4o C4o C4o D4o D4o B4o C5o G4o G4o E4q A4o C4o C4o C4o D4o E4o G4o C4o C4o D4o E4o A4o G4q C4o C4o D4o D4o B4o C5o G4o G4o E4q A4o F4o F4o F4o F4o F4o F4o E4o E4o D4q C4o F4o F4o F4o F4o E4o E4o D4q C4o", "0 0 0 2 2 3 7 0 0 2 2 5 2 7 0 2 0 9 1 6 0 3 5 9 0 0 2 2 3 7 0 2 2 5 2 7 0 2 0 9 1 5 0 3 5 4 0 0 0 0 0 1 0 2 2 5 0 0 0 1 0 2 2", "./MIDI/1_Bad_Meets_Evil_ft_Bruno_Mars_Lighters.mid", "./MP3/1_Bad_Meets_Evil_ft_Bruno_Mars_Lighters_PART.mp3"),
("Ovunque sarai [2022]", "Irama", "C5 C5 D5 E5 G5 C5 C5 D5 E5 G5 A5 G5 C5 C5 D5 E5 C5 F5 C5 F5 C5 F5 F5 E5 D5 C5 C5 C5 D5 E5 G5 C5 C5 D5 E5 G5 A5 G5 C5 C5 D5 E5 C5 F5 C5 F5 C5 F5 F5 E5 G5 C5 E5 F5", "C5o C5o D5o E5o G5o C5o C5o D5o E5o G5o A5o G5o C5o C5o D5o E5o C5o F5o C5o F5o C5o F5o F5o E5o D5o C5o C5o C5o D5o E5o G5o C5o C5o D5o E5o G5o A5o G5o C5o C5o D5o E5o C5o F5o C5t F5o C5o F5o F5o E5i G5o C5s E5o F5o", "0 2 2 3 7 0 2 2 3 2 2 7 0 2 2 4 5 5 5 5 5 0 1 2 2 0 0 2 2 3 7 0 2 2 3 2 2 7 0 2 2 4 5 5 5 5 5 0 1 3 7 4 1", "./MIDI/1_Irama_Ovunque_sarai.MID", "./MP3/1_Irama_Ovunque_sarai_PART.mp3"),
("La isla bonita [1986]", "Madonna", "F#4 F4 F4 F4 F4 E#4 E4 G#4 G4 G4 G4 G4 F#4 F4 E#4 E4 E4 F#4 E4 D#4 D4 D#4 D4 D4 E#4 F#4 E#4 F4 F#4 F4 F4 F4 E#4 E4 G#4 G4 G4 G4 F#4 F4 F4 F#4 E#4 E4 E4 E#4 D#4 D4 D4 G#4 F#4 C#4 C4 D#4", "F#4q F4o F4o F4o F4o E#4o E4o G#q4 G4o G4o G4q G4o F#4q F4o E#4o E4q E4o F#4q E4o D#4q D4o D#o4 D4q D4o E#4q F#4o E#4q F4o F#4q F4q F4o F4o E#4q E4o G#4o G4o G4q G4o F#4q F4o F4q F#4q E#4o E4o E4q E#4q D#4o D4o D4q G#4q F#4q C#4q C4o D#4o", "1 0 0 0 2 1 4 1 0 0 0 1 1 0 1 0 2 2 1 1 1 1 0 3 1 1 0 1 1 0 0 0 1 4 1 0 0 1 1 0 1 1 1 0 1 2 1 0 6 2 5 1 3", "./MIDI/2_Madonna_La_Isla_Bonita.mid", "./MP3/2_Madonna_La_Isla_Bonita_PART.mp3"),
("I just want you [1995]", "Ozzy Osburne", "A3 A3 A3 A3 G#3 G3 G3 B3 B3 B3 B3 A3 A3 A3 A3 A3 A3 A3 G#3 G3 G3 G3 F#3 G#3 F#3 F3 F3 A3 A3 A3 A3 G#3 G3 G3 B3 B3 B3 B3 A3 A3 A3 A3 A3 A3 A3 G#3 G3 G3 G3 F#3 G#3 F#3 F3 F3", "A3o A3o A3o A3o G#3o G3o G3o B3o B3o B3o B3o A3o A3o A3o A3o A3o A3o A3o G#3o G3o G3o G3o F#3o G#3o F#3o F3o F3o A3o A3o A3o A3o G#3o G3o G3o B3o B3o B3o B3o A3o A3o A3o A3o A3o A3o A3o G#3o G3o G3o G3o F#3o G#3o F#3o F3o F3o", "0 0 0 1 1 0 4 0 0 0 2 0 0 0 0 0 0 1 1 0 0 2 2 2 1 0 4 0 0 0 1 1 0 4 0 0 0 2 0 0 0 0 0 0 1 1 0 0 1 2 2 1 0", "./MIDI/2_Ozzy_Osburne_I_Just_Want_You.mid", "./MP3/2_Ozzy_Osburne_I_Just_Want_You_PART.mp3"),
("Ti penso e cambia il mondo [2012]", "Adriano Celentano", "C4 C4 C4 D4 Eb4 E4 C4 F4 Eb4 E4 D4 D4 D4 Eb4 D4 E4 D4 D4 C4 C4 G3 D4 C4 G3 D4 Eb4 D4 C4 D4 D4 G4 G4 Eb4 Ab4 F4 F4 F4 G4 Ab4 G4 F4 Eb4 C4 C4 C4 D4 Eb4 E4 G4 G4 F4 Eb4 F4 Eb4 F4 E4 C4", "C4s C4o C4o D4q Eb4q E4q C4q F4q Eb4q E4o D4s D4q D4q Eb4q D4q E4q D4q D4q C4q C4q G3q D4q C4q G3o D4q Eb4q D4q C4q D4q D4q G4q G4q Eb4q Ab4q F4q F4t F4q G4q Ab4q G4q F4o Eb4q C4s C4o C4o D4q Eb4q E4q G4q G4q F4q Eb4o F4q Eb4q F4q E4q C4q", "0 0 2 1 1 4 5 2 1 2 0 0 1 1 2 2 0 2 0 5 7 2 5 7 1 1 2 2 0 5 0 4 5 3 0 0 2 2 2 2 2 3 0 0 2 1 1 3 0 2 2 2 2 2 1 4", "./MIDI/3_Adriano_Celentano_Ti_Penso_e_Cambia_Il_Mondo.mid", "./MP3/3_Adriano_Celentano_Ti_Penso_e_Cambia_Il_Mondo_PART.mp3"),
("Preludio op 28 n 20 [1831]", "Fryderyk Chopin", "E4 F4 E4 D4 C4 C4 D4 E4 G4 F4 B3 C#4 E4 D4 C#5 Eb4 E4 G#4 F#4 E4 E4 F4 F4 Eb4 E4 E4 B4 G#4 F#4 E4 E4 F4 E4 D4 C5 C4 D4 E4 D4 C4 E4 F4 F4 Eb4 E4 E4 B4 G#4 F#4 E4 E4 F4 E4 D4 C5 C4 D4 G#4 D4 C4", "E4q F4q E4o D4s C4q C4q D4q E4q G4s F4q B3q C#4q E4o D4s C#5q Eb4q E4q G#4o F#4s E4q E4q F4q F4q Eb4s E4q E4q B4q G#4o F#4s E4q E4q F4q E4q D4s C5q C4q D4q E4o D4s C4q E4q F4q F4q Eb4s E4q E4q B4q G#4o F#4s E4q E4q F4q E4q D4s C5q C4q D4q G#4o D4s C4q", "1 1 2 2 0 2 2 3 2 6 2 3 2 11 10 1 4 2 2 0 1 0 2 1 0 7 3 2 2 0 1 1 2 10 12 2 2 2 2 4 1 0 2 1 0 7 3 2 2 0 1 1 2 2 12 2 4 4 2", "./MIDI/3_Preludio_Chopin.mid", "./MP3/3_Preludio_Chopin_PART.mp3"),
("Nel sole [1967]", "Al Bano", "B5 A5 C6 B5 A5 G5 B5 B5 A5 G5 B5 D6 C6 B5 F5 G5 B5 F#5 D5 E5 F#5", "B5o A5o C6o B5q A5o G5o B5q B5q A5o G5o B5q D6q C6o B5o F5o G5o B5q F#5q D5o E5o F#5q", "2 3 1 2 2 4 0 2 2 4 3 2 1 6 2 4 5 4 2 2", "./MIDI/4_Albano_Nel_sole.mid", "./MP3/4_Albano_Nel_sole_PART.mp3"),
("Holly Holy [1969]", "Neil Diamond", "G#4 F#4 A4 G#4 G4 G#4 F#4 A4 G#4 G4 B4 A4 C#5 B4 B4 B4 A4 C#5 B4 B4 B4", "G#4q F#4o A4o G#4o G4o G#4q F#4o A4o G#4o G4o B4q A4o C#5o B4o B4q B4o A4o C#5o B4o B4o", "2 3 1 1 1 2 3 1 1 4 2 4 2 0 0 2 4 1 0", "./MIDI/4_Neil_Diamond_Holly_Holy.mid", "./MP3/4_Neil_Diamond_Holly_Holy_PART.mp3"),
("Piu ci penso [1974]", "Gianni Bella", "E4 E4 C4 B4 G4 A4 A4 E4 E4 C5 B4 G4 A4 A4 C5 B4 C5 D5 C5 B4 C5 B4 G4 A4 A4 C5 B4 C5 A4 A4 E4 E4 C5 B4 G4 A4 F4 C5 B4 C5 D5 C5 B4 C5 B4 G4 A4 A4", "E4o E4o C4q B4o G4o A4o A4o E4o E4o C5o B4o G4o A4o A4q C5q B4o C5o D5o C5q Bo4 C5o B4o G4o A4o A4q C5o B4o C5o A4o A4o E4o E4o C5o B4o G4o A4o F4q C5q B4o C5o D5o C5q B4o C5o B4o G4o A4o A4q", "0 8 1 4 2 0 5 0 8 1 4 2 0 3 1 1 2 2 1 1 1 4 2 0 3", "./MIDI/5_Bella_Gianni_Piu_ci_penso.mid", "./MP3/5_Bella_Gianni_Piu_ci_penso_PART.mp3"),
("Laura non c'è [1997]", "Nek", "C4 B3 G3 A3 C4 B3 G3 A3 C4 B3 G3 A3 A3 A3 B3 A3 G3 E3 C4 B3 G3 A3 E3 E3 C4 B3 G3 A3 C4 B3 G3 A3 A3 A3 B3 A3 G3", "C4o B3o G3o A3o C4o B3o G3o A3o C4o B3o G3o A3o A3o A3o B3o A3o G3q E3o C4o B3o G3o A3o E3o E3o C4o B3o G3o A3q C4o B3o G3o A3o A3o A3s B3o A3o G3q", "1 4 2 3 1 4 2 3 1 4 2 0 0 2 2 2 3 8 1 4 2 5 0 8 1 4 2 3 1 4 2 0 0 2 2 2", "./MIDI/5_Nek_Laura_non_ce.mid", "./MP3/5_Nek_Laura_non_ce_PART.mp3"),
("Pensa [2007]", "Fabrizio Moro", "D5 E5 D5 E5 D5 E5 D5 C5 D5 E5 D5 E5 D5 E5 D5 C5 D5 E5 D5 E5 D5 E5 D5 C5 D5 E5 D5 E5 D5 E5 D5 C5 E5 D5 E5 D5 E5 D5 B4 D5 E5 D5 E5 D5 E5 D5 B4 D5 E5 D5 E5 D5 E5 D5 B4 D5 E5 D5 E5 D5 E5 B4 E5 F5 E5 E5 D5 B4 D5 E5 E5 E5 E5 E5 B4 D5 E5 E5 E5 E5 E5 E5 C5 E5 E5 E5 E5 E5 E5 C5 E5 E5 E5 E5 E5 E5 D5 E5 E5 E5 D5 E5 E5 E5 D5 E5 D5 E5 D5 E5 D5 D5 D5 D5 D5 D5 D5 E5 D5 D5 D5", "D5s E5s D5s E5s D5s E5o D5t C5o D5s E5s D5s E5s D5s E5t D5t C5t D5t E5o D5s E5s D5s E5s D5t C5o D5s E5o D5s E5s D5s E5o D5s C5o E5o D5s E5s D5s E5q D5s B4o D5s E5o D5s E5s D5s E5o D5s B4o D5s E5s D5s E5s D5s E5o D5ss B4o D5s E5s D5t E5s D5t E5o B4t E5s F5s E5t E5o D5s B4s D5s E5s E5t E5s E5t E5s B4s D5s E5s E5s E5s E5s E5sE5q C5s E5s E5s E5s E5s E5s E5o C5o E5s E5s E5s E5s E5s E5q D5s E5q E5s E5q D5s E5s E5t E5o D5s E5s D5s E5s D5s E5s D5s D5t D5t D5s D5t D5q D5s E5s D5s D5s D5s", "2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 4 2 2 2 2 2 3 3 2 2 2 2 2 2 3 3 2 2 2 2 2 2 3 3 2 2 2 2 2 5 5 1 1 0 2 3 3 2 0 0 0 0 5 3 2 0 0 0 0 0 4 4 0 0 0 0 0 4 4 0 0 0 0 0 2 2 0 0 2 2 0 0 2 2 2 2 2 2 2 0 0 0 0 0 0 2 2 0 0", "./MIDI/6_Fabrizio_Moro_Pensa.mid", "./MP3/6_Fabrizio_Moro_Pensa_PART.mp3"),
("Mi fido di te [2005]", "Jovanotti", "E5 E5 E5 E5 A4 E5 E5 E5 E5 E5 A4 E5 E5 E5 E5 A4 E5 E5 D5 C5 E5 E5 E5 E5 G4 E5 E5 E5 E5 E5 G4 E5 E5 G4 E5 E5 G4 E5 E5 G4 E5 D5 E5 E5 E5 E5 A4 E5 E5 E5 E5 A4 E5 E5 E5 E5 A4 E5 E5 E5 E5 A4 E5 E5 E5 E5 G4 E5 E5 E5 E5 E5 G4 E5 E5 E5 E5 G4 E5 E5 E5 E5 D5 C5", "E5s E5s E5s E5o A4s E5s E5s E5s E5s E5s A4o E5s E5s E5t E5t A4s E5s E5s D5s C5o E5s E5s E5s E5o G4s E5s E5s E5s E5s E5s G4o E5s E5o G4s E5s E5s G4s E5s E5s G4s E5s D5s E5s E5t E5t E5o A4t E5o E5s E5s E5o A4s E5s E5t E5t E5o A4s E5s E5s E5t E5s A4t E5s E5s E5s E5o G4s E5s E5s E5s E5s E5s G4q E5s E5s E5s E5q G4s E5s E5t E5t E5o D5o C5q", "0 0 0 7 7 0 0 0 0 7 7 0 0 0 7 7 0 2 2 4 0 0 0 9 9 0 0 0 0 9 9 0 9 9 0 9 9 0 9 9 2 2 0 0 0 7 7 0 0 0 7 7 0 0 0 7 7 0 0 0 7 7 0 0 0 9 9 0 0 0 0 9 9 0 0 0 9 9 0 0 0 2 2", "./MIDI/6_Jovanotti_Mi_Fido_Di_Te.mid", "./MP3/6_Jovanotti_Mi_Fido_Di_Te_PART.mp3"),
("Somebody told me [2004]", "Killers", "B3 B3 E4 F#4 B3 A3 B3 A4 F#B3 B3 E4 F#4 B3 A3 B3 A4 F#4 A4 G4 B3 B3 E4 F#4 B3 A3 B3 D4 B3 B3 B3 E4 F#4 B3 A3 B3 A4 F#4 B3 B3 E4 F#4 B3 B3 A4 F#4 A4 G4 F#4 E4 D4 B3 B3 E4 F#4 B3 A3 B3 D4 B3 B3 B3 B3 B3 B3 E4 F#4 B3 A3 B3 D4 D4 E4", "B3o B3o E4q F#4q B3o A3o B3o A4o F#o B3o B3o E4q F#4q B3o A3o B3o A4o F#4o A4o G4o B3o B3o E4q F#4q B3o A3o B3o D4o B3o B3o B3o E4q F#4q B3o A3o B3o A4o F#4o B3o B3o E4q F#4q B3o B3o A4o F#4o A4q G4o F#4o E4o D4q B3o B3o E4q F#4q B3o A3o B3o D4o B3o B3o B3o B3o B3o B3o E4q F#4q B3o A3o B3o D4o D4o E4q", "0 5 2 7 2 2 10 3 7 0 5 2 7 2 2 10 9 3 2 8 0 5 2 7 2 2 3 3 0 5 2 7 2 2 10 3 7 0 5 2 7 0 10 3 3 2 1 2 2 3 0 4 5 2 7 2 2 3 3 0 0 0 0 0 5 2 7 2 2 3 0 2", "./MIDI/7_Killers_Somebody_Told_Me.mid", "./MP3/7_Killers_Somebody_Told_Me_PART.mp3"),
("Nuvole e lenzuola [2005]", "Negramaro", "C5 C5 B4 C5 C5 C5 B4 C5 C5 C5 B4 C5 B4 C5 B4 C5 B4 A4 G4 A4 C5 C5 C5 B4 C5 C5 C5 B4 C5 C5 C5 B4 C5 B4 C5 B4 C5 B4 C5 D5 C5 C5 C5 C5 C5 C5 B4 C5 B4 C5 C5 C5 B4 C5 B4 C5 B4 C5 B4 A4 B4 A4 A4 C5 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 C5", "C5o C5o B4o C5o C5o C5o B4o C5o C5o C5o B4o C5o B4o C5o B4o C5o B4o A4o G4o A4q C5q C5o C5o B4o C5o C5o C5o B4o C5o C5o C5o B4o C5o B4o C5o B4o C5o B4o C5o D5o C5q C5q C5o C5o C5o C5o B4o C5o B4o C5o C5o C5o B4o C5o B4o C5o B4o C5o B4o A4o B4o A4q A4q C5o C5o B4o C5o B4o C5o B4o C5o B4o C5o B4o C5o B4o C5o B4o C5o B4o C5o B4o C5o B4o C5o C5o", "0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 2 2 2 3 0 0 1 1 0 0 1 1 0 0 1 1 1 1 1 1 1 1 2 2 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 1 1 1 2 2 2 0 3 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0", "./MIDI/7_Negramaro_Nuvole_E_Lenzuola.mid", "./MP3/7_Negramaro_Nuvole_E_Lenzuola_PART.mp3"),
("Centro di gravita permanente [1981]", "Franco Battiato", "C5 D5 C5 D5 C5 D5 C5 D5 C5 D5 C5 D5 E5 E5 D5 D5 G4 E5 D5 D5 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 F5 E5 D5 F5 E5 D5 C5 D5 C5 D5 C5 D5 C5 D5 C5 D5 C5 D5 E5 E5 D5 D5 G4 E5 D5 D5 C5 B4 C5 B4 C5 B4 C5 B4 C5 B4 C5 F5 E5 D5 F5 E5 D5 D5Eb5 F5 E5 F5 G5", "C5q D5o C5o D5q C5o D5o C5q D5o C5q D5o C5q D5q E5o E5o D5o D5o G4o E5o D5o D5o C5o B4q C5q B4q C5o B4q C5o B4o C5o B4q C5q F5o E5o D5o F5o E5o D5o C5q D5o C5o D5q C5o D5q C5o D5o C5q D5o C5q D5q E5o E5o D5o D5o G4o E5o D5o D5o C5o B4q C5q B4q C5o B4o C5o B4o C5o B4q C5q F5o E5o D5o F5o E5o D5o D5w Eb5d F5o E5o F5o G5d", "2 2 2 2 2 2 2 2 2 2 2 2 0 2 0 7 7 2 0 2 1 1 1 1 1 1 1 1 1 1 5 1 2 3 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 0 2 0 7 7 2 0 2 1 1 1 1 1 1 1 1 1 1 5 1 2 3 1 2 0 1 2 1 1 2", "./MIDI/8_Battiato_Centro_Di_Gravita_Permanente.mid", "./MP3/8_Battiato_Centro_Di_Gravita_Permanente_PART.mp3"),
("Il presidente [1992]", "Gianni Morandi", "C6 C6 C6 C6 C6 D6 E6 C6 C6 C6 C6 C6 D6 E6 C6 A5 E6 F6 E6 E6 D6 D6 C6 B5 C6 C6 C6 C6 C6 D6 E6 C6 C6 C6 C6 C6 D6 E6 C6 A5 G5 F5 F6 E6 E6 D6 D6 E6 F6 G6 E6 E6 D6 D6 C6 C6 D6 E6 F6 A5 F6 F6 E6 G6 F6 A5 D6 D6 C6 D6 C6 A5", "C6s C6s C6s C6s C6s D6s E6s C6s C6s C6s C6s C6s D6s E6s C6s A5s E6s F6s E6s E6s D6s D6s C6s B5s C6s C6s C6s C6s C6s D6s E6s C6s C6s C6s C6s C6s D6s E6s C6s A5t G5t F5t F6o E6o E6o D6o D6o E6o F6o G6o E6s E6s D6s D6s C6s C6s D6s E6s F6s A5q F6s F6s E6s G6s F6s A5q D6s D6s C6o D6s C6o A5d", "0 0 0 0 2 2 4 0 0 0 0 2 2 4 3 7 1 1 0 2 0 2 1 1 0 0 0 0 2 2 4 0 0 0 0 2 2 4 3 2 2 12 1 0 2 0 2 1 2 3 0 2 0 2 0 2 2 1 8 8 0 1 3 2 8 5 0 2 2 2 3", "./MIDI/8_Gianni_Morandi_il_presidente.midi", "./MP3/8_Gianni_Morandi_il_presidente_PART.mp3")
;
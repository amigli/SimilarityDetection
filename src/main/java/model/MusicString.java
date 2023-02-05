package model;

public class MusicString {

        private String[] note;

        public MusicString(String s) {
            note = s.split(" ");
        }

        public String noteAt(int index) {
            return note[index];
        }

        public int length() {
            return note.length;
        }
}

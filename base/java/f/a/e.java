package f.a;

public interface e {
    public static final e b = new a();

    public static class a implements e {
        public b a() {
            return b.NULL;
        }

        public boolean equals(Object obj) {
            if (obj instanceof e) {
                return b.NULL.equals(((e) obj).a());
            }
            return false;
        }

        public int hashCode() {
            return b.NULL.hashCode();
        }

        public String toString() {
            return "null";
        }
    }

    public enum b {
        ARRAY,
        OBJECT,
        STRING,
        NUMBER,
        TRUE,
        FALSE,
        NULL
    }

    b a();
}

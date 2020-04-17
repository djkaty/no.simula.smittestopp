package e.c.c;

public enum t {
    DEFAULT {
        public j serialize(Long l2) {
            return new p((Number) l2);
        }
    },
    STRING {
        public j serialize(Long l2) {
            return new p(String.valueOf(l2));
        }
    };

    public abstract j serialize(Long l2);
}

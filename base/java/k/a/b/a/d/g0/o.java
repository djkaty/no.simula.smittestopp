package k.a.b.a.d.g0;

import java.nio.ByteBuffer;

public class o implements l0 {
    public final f0 a;
    public final b0 b;

    public o(f0 f0Var, b0 b0Var) {
        this.a = f0Var;
        this.b = b0Var;
    }

    public int capacity() {
        return this.b.capacity();
    }

    public void close_head() {
        this.a.close_head();
    }

    public void close_tail() {
        this.b.close_tail();
    }

    public ByteBuffer head() {
        return this.a.head();
    }

    public int pending() {
        return this.a.pending();
    }

    public void pop(int i2) {
        this.a.pop(i2);
    }

    public int position() {
        return this.b.position();
    }

    public void process() {
        this.b.process();
    }

    public ByteBuffer tail() {
        return this.b.tail();
    }
}

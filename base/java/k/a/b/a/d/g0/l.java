package k.a.b.a.d.g0;

import java.nio.ByteBuffer;
import k.a.b.a.d.d0;
import k.a.b.a.d.g0.l0;

public abstract class l<T1 extends l0, T2 extends l0> implements l0 {
    public static final ByteBuffer EMPTY = ByteBuffer.allocate(0);
    public final ByteBuffer _determinationBuffer;
    public boolean _head_closed = false;
    public l0 _selectedTransportWrapper;
    public boolean _tail_closed = false;
    public final T1 _wrapper1;
    public final T2 _wrapper2;

    public l(T1 t1, T2 t2) {
        this._wrapper1 = t1;
        this._wrapper2 = t2;
        this._determinationBuffer = ByteBuffer.allocate(bufferSize());
    }

    public abstract int bufferSize();

    public int capacity() {
        if (isDeterminationMade()) {
            return this._selectedTransportWrapper.capacity();
        }
        if (this._tail_closed) {
            return -1;
        }
        return this._determinationBuffer.remaining();
    }

    public void close_head() {
        if (isDeterminationMade()) {
            this._selectedTransportWrapper.close_head();
        } else {
            this._head_closed = true;
        }
    }

    public void close_tail() {
        try {
            if (isDeterminationMade()) {
                this._selectedTransportWrapper.close_tail();
            }
        } finally {
            this._tail_closed = true;
        }
    }

    public ByteBuffer head() {
        if (isDeterminationMade()) {
            return this._selectedTransportWrapper.head();
        }
        return EMPTY;
    }

    public boolean isDeterminationMade() {
        return this._selectedTransportWrapper != null;
    }

    public abstract void makeDetermination(byte[] bArr);

    public int pending() {
        if (this._head_closed) {
            return -1;
        }
        if (isDeterminationMade()) {
            return this._selectedTransportWrapper.pending();
        }
        return 0;
    }

    public void pop(int i2) {
        if (isDeterminationMade()) {
            this._selectedTransportWrapper.pop(i2);
        } else if (i2 > 0) {
            throw new IllegalStateException("no bytes have been read");
        }
    }

    public int position() {
        if (isDeterminationMade()) {
            return this._selectedTransportWrapper.position();
        }
        if (this._tail_closed) {
            return -1;
        }
        return this._determinationBuffer.position();
    }

    public void process() {
        if (isDeterminationMade()) {
            this._selectedTransportWrapper.process();
        } else if (this._determinationBuffer.remaining() == 0) {
            this._determinationBuffer.flip();
            byte[] bArr = new byte[this._determinationBuffer.remaining()];
            this._determinationBuffer.get(bArr);
            makeDetermination(bArr);
            this._determinationBuffer.rewind();
            this._selectedTransportWrapper.tail().put(this._determinationBuffer);
            this._selectedTransportWrapper.process();
        } else if (this._tail_closed) {
            throw new d0("connection aborted");
        }
    }

    public ByteBuffer tail() {
        if (isDeterminationMade()) {
            return this._selectedTransportWrapper.tail();
        }
        return this._determinationBuffer;
    }
}

package k.a.b.a.d;

public interface h extends j {

    public enum b implements i {
        REACTOR_INIT,
        REACTOR_QUIESCED,
        REACTOR_FINAL,
        TIMER_TASK,
        CONNECTION_INIT,
        CONNECTION_BOUND,
        CONNECTION_UNBOUND,
        CONNECTION_LOCAL_OPEN,
        CONNECTION_REMOTE_OPEN,
        CONNECTION_LOCAL_CLOSE,
        CONNECTION_REMOTE_CLOSE,
        CONNECTION_FINAL,
        SESSION_INIT,
        SESSION_LOCAL_OPEN,
        SESSION_REMOTE_OPEN,
        SESSION_LOCAL_CLOSE,
        SESSION_REMOTE_CLOSE,
        SESSION_FINAL,
        LINK_INIT,
        LINK_LOCAL_OPEN,
        LINK_REMOTE_OPEN,
        LINK_LOCAL_DETACH,
        LINK_REMOTE_DETACH,
        LINK_LOCAL_CLOSE,
        LINK_REMOTE_CLOSE,
        LINK_FLOW,
        LINK_FINAL,
        DELIVERY,
        TRANSPORT,
        TRANSPORT_ERROR,
        TRANSPORT_HEAD_CLOSED,
        TRANSPORT_TAIL_CLOSED,
        TRANSPORT_CLOSED,
        SELECTABLE_INIT,
        SELECTABLE_UPDATED,
        SELECTABLE_READABLE,
        SELECTABLE_WRITABLE,
        SELECTABLE_EXPIRED,
        SELECTABLE_ERROR,
        SELECTABLE_FINAL,
        NON_CORE_EVENT {
            public boolean isValid() {
                return false;
            }
        };

        public boolean isValid() {
            return true;
        }
    }
}

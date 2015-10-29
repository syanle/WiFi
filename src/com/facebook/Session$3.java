// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.facebook:
//            Session, SessionState

class 
    implements Runnable
{

    final Session this$0;
    private final Exception val$exception;
    private final SessionState val$newState;

    public void run()
    {
        Iterator iterator = Session.access$7(Session.this).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Runnable runnable = new Runnable() {

                final Session._cls3 this$1;
                private final Session.StatusCallback val$callback;
                private final Exception val$exception;
                private final SessionState val$newState;

                public void run()
                {
                    callback.call(this$0, newState, exception);
                }

            
            {
                this$1 = Session._cls3.this;
                callback = statuscallback;
                newState = sessionstate;
                exception = exception1;
                super();
            }
            };
            Session.access$9(Session.access$8(Session.this), runnable);
        } while (true);
    }


    te()
    {
        this$0 = final_session;
        val$newState = sessionstate;
        val$exception = Exception.this;
        super();
    }
}

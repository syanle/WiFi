// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.Map;

// Referenced classes of package org.jivesoftware.smack:
//            ConnectionListener, PrivacyListManager

class this._cls0
    implements ConnectionListener
{

    final PrivacyListManager this$0;

    public void connectionClosed()
    {
        PrivacyListManager.access$1().remove(PrivacyListManager.access$2(PrivacyListManager.this));
    }

    public void connectionClosedOnError(Exception exception)
    {
    }

    public void reconnectingIn(int i)
    {
    }

    public void reconnectionFailed(Exception exception)
    {
    }

    public void reconnectionSuccessful()
    {
    }

    ()
    {
        this$0 = PrivacyListManager.this;
        super();
    }
}

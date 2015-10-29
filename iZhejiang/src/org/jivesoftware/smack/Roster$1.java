// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;


// Referenced classes of package org.jivesoftware.smack:
//            ConnectionListener, Roster

class this._cls0
    implements ConnectionListener
{

    final Roster this$0;

    public void connectionClosed()
    {
        Roster.access$10(Roster.this);
    }

    public void connectionClosedOnError(Exception exception)
    {
        Roster.access$10(Roster.this);
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

    nListener()
    {
        this$0 = Roster.this;
        super();
    }
}

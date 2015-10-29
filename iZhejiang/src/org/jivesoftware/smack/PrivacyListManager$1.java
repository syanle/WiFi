// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;


// Referenced classes of package org.jivesoftware.smack:
//            ConnectionCreationListener, PrivacyListManager, Connection

class tener
    implements ConnectionCreationListener
{

    public void connectionCreated(Connection connection)
    {
        new PrivacyListManager(connection, null);
    }

    tener()
    {
    }
}

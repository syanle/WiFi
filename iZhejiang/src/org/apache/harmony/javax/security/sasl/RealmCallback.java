// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.sasl;

import org.apache.harmony.javax.security.auth.callback.TextInputCallback;

public class RealmCallback extends TextInputCallback
{

    private static final long serialVersionUID = 0xc3bbb99209f28cf4L;

    public RealmCallback(String s)
    {
        super(s);
    }

    public RealmCallback(String s, String s1)
    {
        super(s, s1);
    }
}

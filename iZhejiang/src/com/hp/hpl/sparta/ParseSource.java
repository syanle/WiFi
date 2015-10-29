// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


// Referenced classes of package com.hp.hpl.sparta:
//            DefaultLog, ParseLog

public interface ParseSource
{

    public static final ParseLog DEFAULT_LOG = new DefaultLog();
    public static final int MAXLOOKAHEAD = "<?xml version=\"1.0\" encoding=\"\"".length() + 40;

    public abstract int getLineNumber();

    public abstract String getSystemId();

    public abstract String toString();

}

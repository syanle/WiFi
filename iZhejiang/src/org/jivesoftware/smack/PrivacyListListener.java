// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.List;

public interface PrivacyListListener
{

    public abstract void setPrivacyList(String s, List list);

    public abstract void updatedPrivacyList(String s);
}

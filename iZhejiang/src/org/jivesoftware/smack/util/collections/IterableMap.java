// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.util.Map;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            MapIterator

public interface IterableMap
    extends Map
{

    public abstract MapIterator mapIterator();
}

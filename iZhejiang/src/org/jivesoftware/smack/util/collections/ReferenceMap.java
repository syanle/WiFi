// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractReferenceMap

public class ReferenceMap extends AbstractReferenceMap
    implements Serializable
{

    private static final long serialVersionUID = 0x1594ca03984908d7L;

    public ReferenceMap()
    {
        super(0, 1, 16, 0.75F, false);
    }

    public ReferenceMap(int i, int j)
    {
        super(i, j, 16, 0.75F, false);
    }

    public ReferenceMap(int i, int j, int k, float f)
    {
        super(i, j, k, f, false);
    }

    public ReferenceMap(int i, int j, int k, float f, boolean flag)
    {
        super(i, j, k, f, flag);
    }

    public ReferenceMap(int i, int j, boolean flag)
    {
        super(i, j, 16, 0.75F, flag);
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        doReadObject(objectinputstream);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.defaultWriteObject();
        doWriteObject(objectoutputstream);
    }
}

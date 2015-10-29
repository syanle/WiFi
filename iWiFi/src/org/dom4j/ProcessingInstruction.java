// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.util.Map;

// Referenced classes of package org.dom4j:
//            Node

public interface ProcessingInstruction
    extends Node
{

    public abstract String getTarget();

    public abstract String getText();

    public abstract String getValue(String s);

    public abstract Map getValues();

    public abstract boolean removeValue(String s);

    public abstract void setTarget(String s);

    public abstract void setValue(String s, String s1);

    public abstract void setValues(Map map);
}

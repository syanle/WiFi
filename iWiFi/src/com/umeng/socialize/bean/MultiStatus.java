// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.bean;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.bean:
//            SHARE_MEDIA

public class MultiStatus
{

    private int a;
    private Map b;
    private Map c;

    public MultiStatus(int i)
    {
        a = i;
        b = new HashMap();
        c = new HashMap();
    }

    public Map getAllChildren()
    {
        HashMap hashmap;
        Object obj;
        hashmap = new HashMap();
        hashmap.putAll(c);
        obj = b.keySet();
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = ((Set) (obj)).iterator();
_L5:
        if (((Iterator) (obj)).hasNext()) goto _L3; else goto _L2
_L2:
        return hashmap;
_L3:
        SHARE_MEDIA share_media = (SHARE_MEDIA)((Iterator) (obj)).next();
        Integer integer = (Integer)b.get(share_media);
        hashmap.put(share_media.toString(), integer);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public int getChildCode(String s)
    {
        if (c.containsKey(s))
        {
            return ((Integer)c.get(s)).intValue();
        }
        s = SHARE_MEDIA.convertToEmun(s);
        if (s != null && b.containsKey(s))
        {
            return ((Integer)b.get(s)).intValue();
        } else
        {
            return -103;
        }
    }

    public Map getPlatformCode()
    {
        return b;
    }

    public int getPlatformStatus(SHARE_MEDIA share_media)
    {
        if (b.containsKey(share_media))
        {
            return ((Integer)b.get(share_media)).intValue();
        } else
        {
            return -102;
        }
    }

    public int getStCode()
    {
        return a;
    }

    public void setInfoCode(Map map)
    {
        c.putAll(map);
    }

    public void setPlatformCode(Map map)
    {
        b.putAll(map);
    }

    public void setStCode(int i)
    {
        a = i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder((new StringBuilder("status=")).append(a).append("{").toString());
        if (b == null || b.keySet() == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = b.keySet().iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        stringbuilder.append("}");
_L2:
        return stringbuilder.toString();
_L4:
        SHARE_MEDIA share_media = (SHARE_MEDIA)iterator.next();
        Integer integer = (Integer)b.get(share_media);
        stringbuilder.append((new StringBuilder("[")).append(share_media.toString()).append("=").append(integer).append("]").toString());
        if (true) goto _L6; else goto _L5
_L5:
    }
}

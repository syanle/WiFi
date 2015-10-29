// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.event;

import java.util.Arrays;
import java.util.Properties;

// Referenced classes of package com.tencent.stat.event:
//            CustomEvent

public static class prop
{

    String args[];
    String id;
    Properties prop;

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        boolean flag;
        if (!(obj instanceof prop))
        {
            break MISSING_BLOCK_LABEL_94;
        }
        obj = (prop)obj;
        if (id.equals(((id) (obj)).id) && Arrays.equals(args, ((args) (obj)).args))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (prop == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (flag && prop.equals(((prop) (obj)).prop)) goto _L1; else goto _L3
_L3:
        return false;
        if (flag && ((prop) (obj)).prop == null) goto _L1; else goto _L4
_L4:
        return false;
        return false;
    }

    public int hashCode()
    {
        int j = 0;
        if (id != null)
        {
            j = id.hashCode();
        }
        int i = j;
        if (args != null)
        {
            i = j ^ Arrays.hashCode(args);
        }
        j = i;
        if (prop != null)
        {
            j = i ^ prop.hashCode();
        }
        return j;
    }

    public String toString()
    {
        String s2 = id;
        String s = "";
        if (args != null)
        {
            s = args[0];
            for (int i = 1; i < args.length; i++)
            {
                s = (new StringBuilder()).append(s).append(",").append(args[i]).toString();
            }

            s = (new StringBuilder()).append("[").append(s).append("]").toString();
        }
        String s1 = s;
        if (prop != null)
        {
            s1 = (new StringBuilder()).append(s).append(prop.toString()).toString();
        }
        return (new StringBuilder()).append(s2).append(s1).toString();
    }

    public ()
    {
        prop = null;
    }
}

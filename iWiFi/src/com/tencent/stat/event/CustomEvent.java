// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.event;

import android.content.Context;
import java.util.Arrays;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat.event:
//            Event, EventType

public class CustomEvent extends Event
{
    public static class Key
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
            if (!(obj instanceof Key))
            {
                break MISSING_BLOCK_LABEL_94;
            }
            obj = (Key)obj;
            if (id.equals(((Key) (obj)).id) && Arrays.equals(args, ((Key) (obj)).args))
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
            if (flag && prop.equals(((Key) (obj)).prop)) goto _L1; else goto _L3
_L3:
            return false;
            if (flag && ((Key) (obj)).prop == null) goto _L1; else goto _L4
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

        public Key()
        {
            prop = null;
        }
    }


    private long duration;
    protected Key key;

    public CustomEvent(Context context, int i, String s)
    {
        super(context, i);
        key = new Key();
        duration = -1L;
        key.id = s;
    }

    public Key getKey()
    {
        return key;
    }

    public EventType getType()
    {
        return EventType.CUSTOM;
    }

    public boolean onEncode(JSONObject jsonobject)
        throws JSONException
    {
        jsonobject.put("ei", key.id);
        if (duration > 0L)
        {
            jsonobject.put("du", duration);
        }
        if (key.args != null)
        {
            JSONArray jsonarray = new JSONArray();
            String as[] = key.args;
            int j = as.length;
            for (int i = 0; i < j; i++)
            {
                jsonarray.put(as[i]);
            }

            jsonobject.put("ar", jsonarray);
        }
        if (key.prop != null)
        {
            jsonobject.put("kv", new JSONObject(key.prop));
        }
        return true;
    }

    public void setArgs(String as[])
    {
        key.args = as;
    }

    public void setDuration(long l)
    {
        duration = l;
    }

    public void setProperties(Properties properties)
    {
        key.prop = properties;
    }
}

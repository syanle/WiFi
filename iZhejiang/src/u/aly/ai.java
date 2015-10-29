// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import org.json.JSONArray;

// Referenced classes of package u.aly:
//            bg

public class ai extends bg
{

    public ai()
    {
    }

    public ai(String s)
        throws Exception
    {
        a(new JSONArray(s));
    }

    public ai(JSONArray jsonarray)
        throws Exception
    {
        a(jsonarray);
    }

    private void a(JSONArray jsonarray)
        throws Exception
    {
        a(jsonarray.getString(0));
        a(jsonarray.getInt(1));
    }
}

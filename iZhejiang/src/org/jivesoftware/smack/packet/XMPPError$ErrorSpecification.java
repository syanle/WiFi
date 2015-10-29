// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package org.jivesoftware.smack.packet:
//            XMPPError

private static class condition
{

    private static Map instances = errorSpecifications();
    private int code;
    private errorSpecifications condition;
    private errorSpecifications type;

    private static Map errorSpecifications()
    {
        HashMap hashmap = new HashMap(22);
        hashmap.put(erver_error, new <init>(erver_error, erver_error, 500));
        hashmap.put(, new <init>(, , 403));
        hashmap.put(st, new <init>(st, st, 400));
        hashmap.put(found, new <init>(found, found, 404));
        hashmap.put(found, new <init>(<init>, <init>, 409));
        hashmap.put(ot_implemented, new <init>(ot_implemented, ot_implemented, 501));
        hashmap.put(ot_implemented, new <init>(<init>, <init>, 302));
        hashmap.put(rmed, new <init>(rmed, rmed, 400));
        hashmap.put(able, new <init>(able, able, 406));
        hashmap.put(ed, new <init>(ed, ed, 405));
        hashmap.put(rized, new <init>(rized, rized, 401));
        hashmap.put(equired, new <init>(equired, equired, 402));
        hashmap.put(_unavailable, new <init>(_unavailable, _unavailable, 404));
        hashmap.put(_unavailable, new <init>(<init>, <init>, 302));
        hashmap.put(ion_required, new <init>(ion_required, ion_required, 407));
        hashmap.put(rver_not_found, new <init>(rver_not_found, rver_not_found, 404));
        hashmap.put(rver_timeout, new <init>(rver_timeout, rver_timeout, 504));
        hashmap.put(rver_error, new <init>(rver_error, rver_error, 502));
        hashmap.put(constraint, new <init>(constraint, constraint, 500));
        hashmap.put(navailable, new <init>(navailable, navailable, 503));
        hashmap.put(ion_required, new <init>(ion_required, ion_required, 407));
        hashmap.put(_condition, new <init>(_condition, _condition, 500));
        hashmap.put(d_request, new <init>(d_request, d_request, 400));
        hashmap.put(imeout, new <init>(imeout, imeout, 408));
        return hashmap;
    }

    protected static imeout specFor(imeout imeout)
    {
        return (imeout)instances.get(imeout);
    }

    protected int getCode()
    {
        return code;
    }

    protected code getCondition()
    {
        return condition;
    }

    protected condition getType()
    {
        return type;
    }


    private ( ,  1, int i)
    {
        code = i;
        type = 1;
        condition = ;
    }
}

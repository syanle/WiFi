// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;


// Referenced classes of package com.baidu.mapapi.search.route:
//            PlanNode

public class TransitRoutePlanOption
{
    public static final class TransitPolicy extends Enum
    {

        public static final TransitPolicy EBUS_NO_SUBWAY;
        public static final TransitPolicy EBUS_TIME_FIRST;
        public static final TransitPolicy EBUS_TRANSFER_FIRST;
        public static final TransitPolicy EBUS_WALK_FIRST;
        private static final TransitPolicy b[];
        private int a;

        public static TransitPolicy valueOf(String s)
        {
            return (TransitPolicy)Enum.valueOf(com/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy, s);
        }

        public static TransitPolicy[] values()
        {
            return (TransitPolicy[])b.clone();
        }

        public int getInt()
        {
            return a;
        }

        static 
        {
            EBUS_TIME_FIRST = new TransitPolicy("EBUS_TIME_FIRST", 0, 3);
            EBUS_TRANSFER_FIRST = new TransitPolicy("EBUS_TRANSFER_FIRST", 1, 4);
            EBUS_WALK_FIRST = new TransitPolicy("EBUS_WALK_FIRST", 2, 5);
            EBUS_NO_SUBWAY = new TransitPolicy("EBUS_NO_SUBWAY", 3, 6);
            b = (new TransitPolicy[] {
                EBUS_TIME_FIRST, EBUS_TRANSFER_FIRST, EBUS_WALK_FIRST, EBUS_NO_SUBWAY
            });
        }

        private TransitPolicy(String s, int i, int j)
        {
            super(s, i);
            a = 0;
            a = j;
        }
    }


    PlanNode a;
    PlanNode b;
    String c;
    TransitPolicy d;

    public TransitRoutePlanOption()
    {
        a = null;
        b = null;
        c = null;
        d = TransitPolicy.EBUS_TIME_FIRST;
    }

    public TransitRoutePlanOption city(String s)
    {
        c = s;
        return this;
    }

    public TransitRoutePlanOption from(PlanNode plannode)
    {
        a = plannode;
        return this;
    }

    public TransitRoutePlanOption policy(TransitPolicy transitpolicy)
    {
        d = transitpolicy;
        return this;
    }

    public TransitRoutePlanOption to(PlanNode plannode)
    {
        b = plannode;
        return this;
    }
}

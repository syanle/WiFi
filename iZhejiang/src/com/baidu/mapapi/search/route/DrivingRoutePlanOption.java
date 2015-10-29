// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;

import java.util.List;

// Referenced classes of package com.baidu.mapapi.search.route:
//            PlanNode

public class DrivingRoutePlanOption
{
    public static final class DrivingPolicy extends Enum
    {

        public static final DrivingPolicy ECAR_AVOID_JAM;
        public static final DrivingPolicy ECAR_DIS_FIRST;
        public static final DrivingPolicy ECAR_FEE_FIRST;
        public static final DrivingPolicy ECAR_TIME_FIRST;
        private static final DrivingPolicy b[];
        private int a;

        public static DrivingPolicy valueOf(String s)
        {
            return (DrivingPolicy)Enum.valueOf(com/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy, s);
        }

        public static DrivingPolicy[] values()
        {
            return (DrivingPolicy[])b.clone();
        }

        public int getInt()
        {
            return a;
        }

        static 
        {
            ECAR_AVOID_JAM = new DrivingPolicy("ECAR_AVOID_JAM", 0, -1);
            ECAR_TIME_FIRST = new DrivingPolicy("ECAR_TIME_FIRST", 1, 0);
            ECAR_DIS_FIRST = new DrivingPolicy("ECAR_DIS_FIRST", 2, 1);
            ECAR_FEE_FIRST = new DrivingPolicy("ECAR_FEE_FIRST", 3, 2);
            b = (new DrivingPolicy[] {
                ECAR_AVOID_JAM, ECAR_TIME_FIRST, ECAR_DIS_FIRST, ECAR_FEE_FIRST
            });
        }

        private DrivingPolicy(String s, int i, int j)
        {
            super(s, i);
            a = j;
        }
    }


    PlanNode a;
    PlanNode b;
    DrivingPolicy c;
    List d;

    public DrivingRoutePlanOption()
    {
        a = null;
        b = null;
        c = DrivingPolicy.ECAR_TIME_FIRST;
        d = null;
    }

    public DrivingRoutePlanOption from(PlanNode plannode)
    {
        a = plannode;
        return this;
    }

    public DrivingRoutePlanOption passBy(List list)
    {
        d = list;
        return this;
    }

    public DrivingRoutePlanOption policy(DrivingPolicy drivingpolicy)
    {
        c = drivingpolicy;
        return this;
    }

    public DrivingRoutePlanOption to(PlanNode plannode)
    {
        b = plannode;
        return this;
    }
}

// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.route;


// Referenced classes of package com.baidu.mapapi.search.route:
//            PlanNode

public class WalkingRoutePlanOption
{

    PlanNode a;
    PlanNode b;

    public WalkingRoutePlanOption()
    {
        a = null;
        b = null;
    }

    public WalkingRoutePlanOption from(PlanNode plannode)
    {
        a = plannode;
        return this;
    }

    public WalkingRoutePlanOption to(PlanNode plannode)
    {
        b = plannode;
        return this;
    }
}

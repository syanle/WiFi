// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.view.animation.Interpolator;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            g, h

private static class <init>
    implements Interpolator
{

    private float a[] = {
        0.0F, 0.02692683F, 0.05384701F, 0.08075392F, 0.1076409F, 0.1345013F, 0.1613285F, 0.188116F, 0.214857F, 0.241545F, 
        0.2681734F, 0.2947356F, 0.3212251F, 0.3476354F, 0.3739598F, 0.4001921F, 0.4263255F, 0.4523538F, 0.4782705F, 0.5040691F, 
        0.5297434F, 0.555287F, 0.5806936F, 0.6059569F, 0.6310707F, 0.6560287F, 0.6808249F, 0.7054532F, 0.7299073F, 0.7541814F, 
        0.7782694F, 0.8021654F, 0.8258634F, 0.8493577F, 0.8726424F, 0.8957118F, 0.9185602F, 0.941182F, 0.9635715F, 0.9857233F, 
        1.007632F, 1.029292F, 1.050698F, 1.071845F, 1.092727F, 1.11334F, 1.133677F, 1.153736F, 1.173509F, 1.192993F, 
        1.18934F, 1.172811F, 1.156547F, 1.140553F, 1.124833F, 1.109391F, 1.09423F, 1.079354F, 1.064767F, 1.050473F, 
        1.036474F, 1.022775F, 1.009379F, 0.996289F, 0.9835081F, 0.9710398F, 0.958887F, 0.9470527F, 0.93554F, 0.9243516F, 
        0.9134902F, 0.9029586F, 0.9048271F, 0.9114033F, 0.9177547F, 0.9238795F, 0.9297765F, 0.9354441F, 0.9408808F, 0.9460853F, 
        0.9510565F, 0.955793F, 0.9602937F, 0.9645574F, 0.9685832F, 0.9723699F, 0.9759167F, 0.9792228F, 0.9822872F, 0.9851093F, 
        0.9876884F, 0.9900237F, 0.9921147F, 0.993961F, 0.995562F, 0.9969173F, 0.9980267F, 0.9988899F, 0.9995065F, 0.9998766F, 
        1.0F
    };

    public float getInterpolation(float f)
    {
        byte byte0 = 100;
        int j = (int)(100F * f);
        int i = j;
        if (j < 0)
        {
            i = 0;
        }
        if (i > 100)
        {
            i = byte0;
        }
        return a[i];
    }

    private ()
    {
    }

    (h h)
    {
        this();
    }
}

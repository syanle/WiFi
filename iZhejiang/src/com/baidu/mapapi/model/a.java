// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.model;

import android.os.Bundle;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.a.d;
import com.baidu.platform.comjni.tools.JNITools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.model:
//            LatLng

public class com.baidu.mapapi.model.a
{
    static class a
    {

        double a;
        double b;

        a()
        {
        }
    }


    static Bundle a = new Bundle();
    static double b[] = {
        12890594.859999999D, 8362377.8700000001D, 5591021D, 3481989.8300000001D, 1678043.1200000001D, 0.0D
    };
    static double c[] = {
        75000000D, 60000000D, 45000000D, 30000000D, 15000000D, 0.0D
    };
    static double d[][];
    static double e[][];

    public static int a(LatLng latlng, int i)
    {
        double d1 = latlng.latitude;
        Object obj = new LatLng((double)i / 111000D + d1, latlng.longitude);
        latlng = a(latlng);
        obj = a(((LatLng) (obj)));
        d1 = Math.pow(latlng.a() - ((b) (obj)).a(), 2D);
        return (int)Math.sqrt(Math.pow(latlng.b() - ((b) (obj)).b(), 2D) + d1);
    }

    public static LatLng a(b b1)
    {
        a a1 = new a();
        a1.a = b1.b();
        a1.b = b1.a();
        a a2 = new a();
        a2.a = a1.a;
        int i;
        if (a2.a > 20037508.342D)
        {
            a2.a = 20037508.342D;
        } else
        if (a2.a < -20037508.342D)
        {
            a2.a = -20037508.342D;
        }
        a2.b = a1.b;
        if (a2.b < 9.9999999999999995E-07D && a2.b >= 0.0D)
        {
            a2.b = 9.9999999999999995E-07D;
        } else
        if (a2.b < 0.0D && a2.b > -9.9999999999999995E-07D)
        {
            a2.b = -9.9999999999999995E-07D;
        } else
        if (a2.b > 20037508.342D)
        {
            a2.b = 20037508.342D;
        } else
        if (a2.b < -20037508.342D)
        {
            a2.b = -20037508.342D;
        }
        a1 = null;
        i = 0;
        do
        {
label0:
            {
                b1 = a1;
                if (i < 6)
                {
                    if (Math.abs(a2.b) <= b[i])
                    {
                        break label0;
                    }
                    b1 = d[i];
                }
                b1 = a(a2, ((double []) (b1)));
                return new LatLng(((a) (b1)).b, ((a) (b1)).a);
            }
            i++;
        } while (true);
    }

    public static LatLng a(String s)
    {
        if (s == null || s.length() <= 0)
        {
            return null;
        } else
        {
            a.clear();
            a.putString("strkey", s);
            JNITools.TransGeoStr2Pt(a);
            s = new b(0, 0);
            s.b(a.getInt("ptx"));
            s.a(a.getInt("pty"));
            return a(((b) (s)));
        }
    }

    static a a(a a1, double ad[])
    {
        byte byte0 = -1;
        a a2 = new a();
        a2.a = ad[0] + ad[1] * Math.abs(a1.a);
        double d1 = Math.abs(a1.b) / ad[9];
        double d2 = ad[2];
        double d3 = ad[3];
        double d4 = ad[4];
        double d5 = ad[5];
        double d6 = ad[6];
        double d7 = ad[7];
        a2.b = d1 * (ad[8] * d1 * d1 * d1 * d1 * d1) + (d2 + d3 * d1 + d4 * d1 * d1 + d5 * d1 * d1 * d1 + d6 * d1 * d1 * d1 * d1 + d7 * d1 * d1 * d1 * d1 * d1);
        d1 = a2.a;
        int i;
        if (a1.a < 0.0D)
        {
            i = -1;
        } else
        {
            i = 1;
        }
        a2.a = d1 * (double)i;
        d1 = a2.b;
        if (a1.b < 0.0D)
        {
            i = byte0;
        } else
        {
            i = 1;
        }
        a2.b = (double)i * d1;
        return a2;
    }

    public static b a(LatLng latlng)
    {
        a a1;
        int i;
        a1 = new a();
        a1.b = Math.abs(latlng.latitude * 1000000D);
        if (a1.b < 0.10000000000000001D)
        {
            a1.b = 0.10000000000000001D;
        }
        i = 0;
_L3:
        if (i >= c.length)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        if (a1.b <= c[i]) goto _L2; else goto _L1
_L1:
        double ad[] = e[i];
_L4:
        a1.a = latlng.longitude;
        a1.b = latlng.latitude;
        latlng = a(a1, ad);
        return new b((int)((a) (latlng)).b, (int)((a) (latlng)).a);
_L2:
        i++;
          goto _L3
        ad = null;
          goto _L4
    }

    public static d a(float f, float f1, String s)
    {
        if (s != null)
        {
            String s1 = s;
            if (s.equals(""))
            {
                s1 = "bd09ll";
            }
            if (s1.equals("bd09ll") || s1.equals("bd09mc") || s1.equals("gcj02") || s1.equals("wgs84"))
            {
                if (s1.equals("bd09mc"))
                {
                    return new d((int)f, (int)f1);
                }
                s = new Bundle();
                JNITools.CoordinateEncryptEx(f, f1, s1, s);
                if (!s.isEmpty())
                {
                    d d1 = new d(0, 0);
                    d1.a((int)s.getDouble("x"));
                    d1.b((int)s.getDouble("y"));
                    return d1;
                }
            }
        }
        return null;
    }

    public static LatLng b(String s)
    {
        if (s == null || s.length() <= 0)
        {
            return null;
        } else
        {
            a.clear();
            a.putString("strkey", s);
            JNITools.TransNodeStr2Pt(a);
            return a(new b((int)a.getDouble("pty"), (int)a.getDouble("ptx")));
        }
    }

    public static d b(LatLng latlng)
    {
        if (latlng == null)
        {
            return null;
        } else
        {
            return a((float)latlng.longitude, (float)latlng.latitude, "bd09ll");
        }
    }

    public static List c(String s)
    {
        Object obj = com.baidu.platform.comjni.tools.a.a(s);
        s = new ArrayList();
        if (obj == null || ((com.baidu.platform.comapi.a.a) (obj)).d == null)
        {
            return null;
        }
        obj = ((com.baidu.platform.comapi.a.a) (obj)).d;
        if (((ArrayList) (obj)).size() > 0)
        {
            obj = (ArrayList)((ArrayList) (obj)).get(0);
            for (int i = 0; i < ((ArrayList) (obj)).size(); i++)
            {
                d d1 = (d)((ArrayList) (obj)).get(i);
                s.add(a(new b(d1.b / 100, d1.a / 100)));
            }

        }
        return s;
    }

    public static List d(String s)
    {
        s = com.baidu.platform.comjni.tools.a.a(s);
        if (s == null || ((com.baidu.platform.comapi.a.a) (s)).d == null)
        {
            return null;
        }
        Object obj = ((com.baidu.platform.comapi.a.a) (s)).d;
        s = new ArrayList();
        ArrayList arraylist;
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); s.add(arraylist))
        {
            Object obj1 = (ArrayList)((Iterator) (obj)).next();
            arraylist = new ArrayList();
            d d1;
            for (obj1 = ((ArrayList) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); arraylist.add(a(new b(d1.b / 100, d1.a / 100))))
            {
                d1 = (d)((Iterator) (obj1)).next();
            }

        }

        return s;
    }

    static 
    {
        double ad[] = {
            -7.4358563895655369E-09D, 8.9830550977262389E-06D, -0.78625201886288998D, 96.326875997598464D, -1.8520475752982599D, -59.369359054858769D, 47.400335492967372D, -16.50741931063887D, 2.2878667469937501D, 10260144.859999999D
        };
        double ad1[] = {
            -3.0308834608988258E-08D, 8.9830550998357796E-06D, 0.30071316287616001D, 59.742936184422767D, 7.3579840748710001D, -25.383710026647449D, 13.45380521110908D, -3.2988376723558401D, 0.32710905363475001D, 6856817.3700000001D
        };
        double ad2[] = {
            -1.9819813049305521E-08D, 8.9830550997795349E-06D, 0.032781828525910002D, 40.316785277057441D, 0.65659298677277D, -4.4425553447749202D, 0.85341911805263004D, 0.12923347998203999D, -0.046257360075610002D, 4482777.0599999996D
        };
        double ad3[] = {
            3.0919137106843701E-09D, 8.9830550968121549E-06D, 6.9957240619999994E-05D, 23.109343041449009D, -0.00023663490510999999D, -0.63218178102419997D, -0.0066349446727299996D, 0.03430082397953D, -0.0046604387633200003D, 2555164.3999999999D
        };
        double ad4[] = {
            2.890871144776878E-09D, 8.9830550958054071E-06D, -3.0682979999999998E-08D, 7.4713702546803198D, -3.53937994E-06D, -0.021451448610369999D, -1.2344265960000001E-05D, 0.00010322952773D, -3.2389036400000001E-06D, 826088.5D
        };
        d = (new double[][] {
            new double[] {
                1.4105261721162549E-08D, 8.9830550964887204E-06D, -1.9939833816331001D, 200.98243831067961D, -187.2403703815547D, 91.608751666984304D, -23.38765649603339D, 2.57121317296198D, -0.038010033086529997D, 17337981.199999999D
            }, ad, ad1, ad2, ad3, ad4
        });
        ad = (new double[] {
            0.0008277824516172526D, 111320.70204635779D, 647795574.66716075D, -4082003173.6413159D, 10774905663.511419D, -15171875531.515591D, 12053065338.62167D, -5124939663.5774717D, 913311935.95120323D, 67.5D
        });
        ad1 = (new double[] {
            0.00220636496208D, 111320.70202091279D, 51751.861128411307D, 3796837.7494702451D, 992013.73977910134D, -1221952.21711287D, 1340652.697009075D, -620943.69909843116D, 144416.92938062409D, 37.5D
        });
        ad2 = (new double[] {
            -0.00032181358786131318D, 111320.7020701615D, 0.0036938343128899999D, 823725.64027957176D, 0.46104986909092999D, 2351.3431413312919D, 1.5806078429819901D, 8.7773858907828401D, 0.37238884252423998D, 7.4500000000000002D
        });
        e = (new double[][] {
            new double[] {
                -0.0015702102444000001D, 111320.7020616939D, 1704480524535203D, -10338987376042340D, 26112667856603880D, -35149669176653700D, 26595700718403920D, -10725012454188240D, 1800819912950474D, 82.5D
            }, ad, new double[] {
                0.0033739876676500001D, 111320.70202021619D, 4481351.0458903648D, -23393751.199316621D, 79682215.471864551D, -115964993.2797253D, 97236711.156021446D, -43661946.337528206D, 8477230.5011352338D, 52.5D
            }, ad1, new double[] {
                -0.00034419635043683922D, 111320.7020576856D, 278.23539807727519D, 2485758.6900353939D, 6070.7509632433776D, 54821.183453521182D, 9540.6066333042363D, -2710.5532674664501D, 1405.483844121726D, 22.5D
            }, ad2
        });
    }
}

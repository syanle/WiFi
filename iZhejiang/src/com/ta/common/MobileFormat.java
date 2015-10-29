// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.common;


public class MobileFormat
{

    private static String regMobile3GStr = "^((157)|(18[78]))[0-9]{8}$";
    private static String regMobileStr = "^1(([3][456789])|([5][01789])|([8][78]))[0-9]{8}$";
    private static String regPhoneString = "^(?:13\\d|15\\d)\\d{5}(\\d{3}|\\*{3})$";
    private static String regTelecomStr = "^1(([3][3])|([5][3])|([8][09]))[0-9]{8}$";
    private static String regTelocom3GStr = "^(18[09])[0-9]{8}$";
    private static String regUnicom3GStr = "^((156)|(18[56]))[0-9]{8}$";
    private static String regUnicomStr = "^1(([3][012])|([5][6])|([8][56]))[0-9]{8}$";
    private int facilitatorType;
    private boolean is3G;
    private boolean isLawful;
    private String mobile;

    public MobileFormat(String s)
    {
        mobile = "";
        facilitatorType = 0;
        isLawful = false;
        is3G = false;
        setMobile(s);
    }

    private void setFacilitatorType(int i)
    {
        facilitatorType = i;
    }

    private void setIs3G(boolean flag)
    {
        is3G = flag;
    }

    private void setLawful(boolean flag)
    {
        isLawful = flag;
    }

    public int getFacilitatorType()
    {
        return facilitatorType;
    }

    public String getMobile()
    {
        return mobile;
    }

    public boolean isIs3G()
    {
        return is3G;
    }

    public boolean isLawful()
    {
        return isLawful;
    }

    public void setMobile(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!s.matches(regMobileStr))
        {
            break; /* Loop/switch isn't completed */
        }
        mobile = s;
        setFacilitatorType(0);
        setLawful(true);
        if (s.matches(regMobile3GStr))
        {
            setIs3G(true);
        }
_L4:
        if (s.matches(regPhoneString))
        {
            mobile = s;
            setFacilitatorType(0);
            setLawful(true);
            if (s.matches(regMobile3GStr))
            {
                setIs3G(true);
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (s.matches(regUnicomStr))
        {
            mobile = s;
            setFacilitatorType(1);
            setLawful(true);
            if (s.matches(regUnicom3GStr))
            {
                setIs3G(true);
            }
        } else
        if (s.matches(regTelecomStr))
        {
            mobile = s;
            setFacilitatorType(2);
            setLawful(true);
            if (s.matches(regTelocom3GStr))
            {
                setIs3G(true);
            }
        }
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

}

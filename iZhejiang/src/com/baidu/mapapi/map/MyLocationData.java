// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;


public class MyLocationData
{
    public static class Builder
    {

        private double a;
        private double b;
        private float c;
        private float d;
        private float e;
        private int f;

        public Builder accuracy(float f1)
        {
            e = f1;
            return this;
        }

        public MyLocationData build()
        {
            return new MyLocationData(a, b, c, d, e, f);
        }

        public Builder direction(float f1)
        {
            d = f1;
            return this;
        }

        public Builder latitude(double d1)
        {
            a = d1;
            return this;
        }

        public Builder longitude(double d1)
        {
            b = d1;
            return this;
        }

        public Builder satellitesNum(int i)
        {
            f = i;
            return this;
        }

        public Builder speed(float f1)
        {
            c = f1;
            return this;
        }

        public Builder()
        {
        }
    }


    public final float accuracy;
    public final float direction;
    public final double latitude;
    public final double longitude;
    public final int satellitesNum;
    public final float speed;

    MyLocationData(double d, double d1, float f, float f1, float f2, 
            int i)
    {
        latitude = d;
        longitude = d1;
        speed = f;
        direction = f1;
        accuracy = f2;
        satellitesNum = i;
    }
}

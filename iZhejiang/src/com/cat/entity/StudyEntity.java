// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.entity;


public class StudyEntity
{

    int age;
    String name;

    public StudyEntity()
    {
    }

    public int getAge()
    {
        return age;
    }

    public String getName()
    {
        return name;
    }

    public void setAge(int i)
    {
        age = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public String toString()
    {
        return (new StringBuilder("name:")).append(name).append(",").append("age:").append(age).append("\n").toString();
    }
}

// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.annotation;

import java.lang.annotation.Annotation;

public interface TAField
    extends Annotation
{

    public abstract String defaultValue();

    public abstract String name();
}

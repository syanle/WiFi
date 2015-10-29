// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.sug;

import com.baidu.mapapi.search.core.SearchResult;
import java.util.ArrayList;
import java.util.List;

public class SuggestionResult extends SearchResult
{
    public static class SuggestionInfo
    {

        public String city;
        public String district;
        public String key;

        public SuggestionInfo()
        {
        }
    }


    private ArrayList a;

    public SuggestionResult()
    {
    }

    SuggestionResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
    }

    void a(ArrayList arraylist)
    {
        a = arraylist;
    }

    public List getAllSuggestions()
    {
        return a;
    }
}

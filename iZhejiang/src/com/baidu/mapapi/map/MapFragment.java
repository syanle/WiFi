// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.app.Activity;
import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.baidu.mapapi.map:
//            MapView, BaiduMapOptions, BaiduMap

public class MapFragment extends Fragment
{

    private static final String a = com/baidu/mapapi/map/MapFragment.getSimpleName();
    private MapView b;
    private BaiduMapOptions c;

    public MapFragment()
    {
    }

    private MapFragment(BaiduMapOptions baidumapoptions)
    {
        c = baidumapoptions;
    }

    public static MapFragment newInstance()
    {
        return new MapFragment();
    }

    public static MapFragment newInstance(BaiduMapOptions baidumapoptions)
    {
        return new MapFragment(baidumapoptions);
    }

    public BaiduMap getBaiduMap()
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.getMap();
        }
    }

    public MapView getMapView()
    {
        return b;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = new MapView(getActivity(), c);
        return b;
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        b.onDestroy();
    }

    public void onDetach()
    {
        super.onDetach();
    }

    public void onPause()
    {
        super.onPause();
        b.onPause();
    }

    public void onResume()
    {
        super.onResume();
        b.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
    }

    public void onStart()
    {
        super.onStart();
    }

    public void onStop()
    {
        super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
    }

}

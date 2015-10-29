// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ZoomControls;
import com.baidu.location.BDLocation;
import com.baidu.location.BDLocationListener;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.SDKInitializer;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.InfoWindow;
import com.baidu.mapapi.map.MapPoi;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.MapView;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.model.LatLng;
import com.cat.data.ComData;
import com.cat.data.MapCustom;
import com.cat.data.MapData;
import com.cat.data.PublicError;
import com.cat.parase.NearBusListParser;
import com.cat.parase.NearTypeParser;
import com.cat.tools.ZoomControlsView;
import com.pubinfo.izhejiang.AroundMoreActivity;
import com.pubinfo.izhejiang.WebviewPage;
import com.pubinfo.izhejiang.controller.BaiduMapsFun;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

public class AroundFragment extends BaiduMapsFun
    implements android.view.View.OnClickListener
{
    public class MyLocationListener
        implements BDLocationListener
    {

        final AroundFragment this$0;

        public void onReceiveLocation(BDLocation bdlocation)
        {
            Object obj;
            obj = new StringBuffer(256);
            ((StringBuffer) (obj)).append("time : ");
            ((StringBuffer) (obj)).append(bdlocation.getTime());
            ((StringBuffer) (obj)).append("\nerror code : ");
            ((StringBuffer) (obj)).append(bdlocation.getLocType());
            ((StringBuffer) (obj)).append("\nlatitude : ");
            ((StringBuffer) (obj)).append(bdlocation.getLatitude());
            ((StringBuffer) (obj)).append("\nlontitude : ");
            ((StringBuffer) (obj)).append(bdlocation.getLongitude());
            ((StringBuffer) (obj)).append("\nradius : ");
            ((StringBuffer) (obj)).append(bdlocation.getRadius());
            if (bdlocation.getLocType() != 61) goto _L2; else goto _L1
_L1:
            mLocationClient.stop();
            ((StringBuffer) (obj)).append("\nspeed : ");
            ((StringBuffer) (obj)).append(bdlocation.getSpeed());
            ((StringBuffer) (obj)).append("\nsatellite : ");
            ((StringBuffer) (obj)).append(bdlocation.getSatelliteNumber());
            ((StringBuffer) (obj)).append("\ndirection : ");
            ((StringBuffer) (obj)).append("\naddr : ");
            ((StringBuffer) (obj)).append(bdlocation.getAddrStr());
            ((StringBuffer) (obj)).append(bdlocation.getDirection());
_L9:
            if (!isAdded()) goto _L4; else goto _L3
_L3:
            obj = MapStatusUpdateFactory.zoomTo(17F);
            mBaiduMap.setMapStatus(((com.baidu.mapapi.map.MapStatusUpdate) (obj)));
            obj = (new com.baidu.mapapi.map.MyLocationData.Builder()).accuracy(bdlocation.getRadius()).direction(100F).latitude(bdlocation.getLatitude()).longitude(bdlocation.getLongitude()).build();
            mBaiduMap.setMyLocationData(((com.baidu.mapapi.map.MyLocationData) (obj)));
            lat = (new StringBuilder(String.valueOf(bdlocation.getLatitude()))).toString();
            lon = (new StringBuilder(String.valueOf(bdlocation.getLongitude()))).toString();
            latlon = (new StringBuilder(String.valueOf(bdlocation.getLatitude()))).append(",").append(bdlocation.getLongitude()).toString();
            if (bdlocation.getAddrStr() != null && !bdlocation.getAddrStr().equals(""))
            {
                city = bdlocation.getAddrStr().split("\u7701")[1].split("\u5E02")[0];
                cityS = (new StringBuilder(String.valueOf(bdlocation.getAddrStr().split("\u5E02")[0]))).append("\u5E02").toString();
            }
            obj = getActivity().getSharedPreferences("Location", 0).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("city", city);
            ((android.content.SharedPreferences.Editor) (obj)).putString("cityS", cityS);
            ((android.content.SharedPreferences.Editor) (obj)).putString("lat", lat);
            ((android.content.SharedPreferences.Editor) (obj)).putString("lon", lon);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            bdlocation = MapStatusUpdateFactory.newLatLng(new LatLng(bdlocation.getLatitude(), bdlocation.getLongitude()));
            mBaiduMap.animateMapStatus(bdlocation);
            if (tag != 0) goto _L6; else goto _L5
_L5:
            listHandler.sendEmptyMessage(2);
_L4:
            return;
_L2:
            if (bdlocation.getLocType() == 161)
            {
                mLocationClient.stop();
                ((StringBuffer) (obj)).append("\naddr : ");
                ((StringBuffer) (obj)).append(bdlocation.getAddrStr());
                ((StringBuffer) (obj)).append("\noperationers : ");
                ((StringBuffer) (obj)).append(bdlocation.getOperators());
            }
            continue; /* Loop/switch isn't completed */
_L6:
            if (tag != 1) goto _L4; else goto _L7
_L7:
            AroundFragment.location_isClicked = true;
            hideLoading();
            return;
            if (true) goto _L9; else goto _L8
_L8:
        }

        public MyLocationListener()
        {
            this$0 = AroundFragment.this;
            super();
        }
    }

    public class MyThread extends Thread
    {

        final AroundFragment this$0;

        public void run()
        {
            if (isAdded() && checkNetWork())
            {
                initMap();
                if (md != null && md.size() > 0)
                {
                    showLoading(false);
                    listHandler.sendEmptyMessage(1);
                    return;
                } else
                {
                    showLoading(false);
                    getNearType("0", getActivity());
                    return;
                }
            } else
            {
                listHandler.sendEmptyMessage(3);
                return;
            }
        }

        public MyThread()
        {
            this$0 = AroundFragment.this;
            super();
        }
    }


    public static final int MORE_PAGE = 2;
    public static final int WEB_PAGE = 1;
    private static boolean location_isClicked = true;
    BitmapDescriptor bdA;
    BitmapDescriptor bdB;
    Bitmap bitmap;
    ImageButton btn_location;
    String city;
    String cityS;
    View convertView;
    Drawable drawable_dfu;
    private LayoutInflater factory;
    String goods;
    ImageView iv;
    ImageView iv_picture;
    String lat;
    String latlon;
    LinearLayout layout1;
    LinearLayout layout_more;
    Handler listHandler;
    private AnimationDrawable loadingAnimationDrawable;
    private ImageView loadingImageView;
    private RelativeLayout loadingRelativeLayout;
    String lon;
    private BaiduMap mBaiduMap;
    BitmapDescriptor mCurrentMarker;
    private LinearLayout mGallery;
    private InfoWindow mInfoWindow;
    public LocationClient mLocationClient;
    private MapView mMapView;
    public MyLocationListener mMyLocationListener;
    int mScreenWitdh;
    List md;
    String name;
    Button open_wifiButton;
    String phone;
    private TextView progressTextView;
    private TextView progressTextView2;
    RelativeLayout relativelayout_Map;
    HorizontalScrollView scrollView;
    String ssid;
    int tag;
    private com.baidu.location.LocationClientOption.LocationMode tempMode;
    private String tempcoor;
    String type;
    String url;
    View view;
    ZoomControlsView zcvZomm;

    public AroundFragment()
    {
        latlon = null;
        factory = null;
        tempMode = com.baidu.location.LocationClientOption.LocationMode.Hight_Accuracy;
        tempcoor = "bd09ll";
        ssid = "";
        bdA = BitmapDescriptorFactory.fromResource(0x7f0200ae);
        bdB = BitmapDescriptorFactory.fromResource(0x7f0200af);
        bitmap = null;
        tag = 0;
    }

    private void Commit(String s)
    {
        clearOverlay(null);
        String s1 = getActivity().getSharedPreferences("LoginSucess", 0).getString("username", "");
        ssid = getConnectedSSID();
        getNearBusList(city, lon, lat, "1000", s, "1", s1, "", ssid, "1", getActivity());
    }

    public static Bitmap getHttpBitmap(String s)
    {
        Object obj = null;
        String s1 = obj;
        InputStream inputstream;
        try
        {
            s = (HttpURLConnection)(new URL(s)).openConnection();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return s1;
        }
        s1 = obj;
        s.setConnectTimeout(6000);
        s1 = obj;
        s.setDoInput(true);
        s1 = obj;
        s.setUseCaches(false);
        s1 = obj;
        inputstream = s.getInputStream();
        s1 = obj;
        s = BitmapFactory.decodeStream(inputstream);
        s1 = s;
        inputstream.close();
        return s;
    }

    private void getLocation()
    {
        LocationClientOption locationclientoption;
        int i;
        mBaiduMap.setMyLocationEnabled(true);
        mLocationClient = new LocationClient(getActivity());
        mMyLocationListener = new MyLocationListener();
        mLocationClient.registerLocationListener(mMyLocationListener);
        locationclientoption = new LocationClientOption();
        locationclientoption.setLocationMode(tempMode);
        locationclientoption.setCoorType(tempcoor);
        i = 1000;
        int j = Integer.valueOf(1000).intValue();
        i = j;
_L2:
        locationclientoption.setScanSpan(i);
        locationclientoption.setIsNeedAddress(true);
        mLocationClient.setLocOption(locationclientoption);
        mLocationClient.start();
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void hideLoading()
    {
        if (loadingRelativeLayout.getVisibility() == 0)
        {
            loadingImageView.setVisibility(8);
            loadingRelativeLayout.setVisibility(8);
            progressTextView.setVisibility(8);
            progressTextView2.setVisibility(8);
        }
    }

    private void hideZoomView(MapView mapview)
    {
        Object obj;
        int i;
        int j;
        mBaiduMap = mapview.getMap();
        j = mapview.getChildCount();
        obj = null;
        i = 0;
_L6:
        if (i < j) goto _L2; else goto _L1
_L1:
        mapview = obj;
_L4:
        mapview.setVisibility(8);
        return;
_L2:
        View view1 = mapview.getChildAt(i);
        if (!(view1 instanceof ZoomControls))
        {
            break; /* Loop/switch isn't completed */
        }
        mapview = view1;
        if (true) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void showLoading(boolean flag)
    {
        if (flag)
        {
            progressTextView.setText("");
            progressTextView.setText(getString(0x7f060030));
            relativelayout_Map.setVisibility(0);
            scrollView.setVisibility(0);
        } else
        {
            relativelayout_Map.setVisibility(8);
            scrollView.setVisibility(8);
        }
        layout1.setVisibility(8);
        loadingRelativeLayout.setVisibility(0);
        loadingImageView.setVisibility(0);
        progressTextView.setVisibility(0);
        if (loadingAnimationDrawable.isRunning())
        {
            loadingAnimationDrawable.stop();
            loadingAnimationDrawable.start();
            return;
        } else
        {
            loadingAnimationDrawable.start();
            return;
        }
    }

    public void clearOverlay(View view1)
    {
        mBaiduMap.clear();
    }

    public void doNearBusListErr(String s)
    {
        listHandler.sendEmptyMessage(4);
    }

    public void doNearBusListSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Object obj;
        obj = NearBusListParser.Nearbuslistparaser(s, 0);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            listHandler.sendEmptyMessage(5);
            return;
        }
        try
        {
            ComData.getInstance().setMapCustom((List)obj);
            listHandler.sendEmptyMessage(6);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            hideLoading();
        }
        location_isClicked = true;
        return;
        listHandler.sendEmptyMessage(4);
        return;
    }

    public void doNearTypeErr(String s)
    {
        listHandler.sendEmptyMessage(4);
    }

    public void doNearTypeSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Object obj = NearTypeParser.Neartypeparaser(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            scrollView.setVisibility(4);
            listHandler.sendEmptyMessage(5);
            return;
        }
        try
        {
            listHandler.sendEmptyMessage(1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            hideLoading();
        }
        scrollView.setVisibility(4);
        location_isClicked = true;
        return;
        scrollView.setVisibility(4);
        listHandler.sendEmptyMessage(4);
        return;
    }

    public void initMap()
    {
        mBaiduMap.setOnMarkerClickListener(new com.baidu.mapapi.map.BaiduMap.OnMarkerClickListener() {

            final AroundFragment this$0;

            public boolean onMarkerClick(Marker marker)
            {
                Object obj;
                Object obj1;
                convertView = factory.inflate(0x7f03001f, null, false);
                obj = marker.getTitle();
                if (!((String) (obj)).equals(""))
                {
                    String as[] = ((String) (obj)).split(",");
                    name = as[0];
                    goods = as[1];
                    url = as[2];
                    type = as[3];
                }
                as = marker. new com.baidu.mapapi.map.InfoWindow.OnInfoWindowClickListener() {

                    final _cls2 this$1;
                    private final Marker val$marker;

                    public void onInfoWindowClick()
                    {
                        Intent intent = new Intent(getActivity(), com/pubinfo/izhejiang/WebviewPage);
                        intent.putExtra("activity", "AroundFragment");
                        LatLng latlng = marker.getPosition();
                        double d = latlng.latitude;
                        double d1 = latlng.longitude;
                        intent.putExtra("url", url);
                        intent.putExtra("name", name);
                        intent.putExtra("goods", goods);
                        intent.putExtra("type", type);
                        intent.putExtra("lat", Double.valueOf(d));
                        intent.putExtra("lon", Double.valueOf(d1));
                        startActivityForResult(intent, 1);
                    }

            
            {
                this$1 = final__pcls2;
                marker = Marker.this;
                super();
            }
                };
                ((TextView)convertView.findViewById(0x7f0a00a8)).setText(name);
                obj1 = (TextView)convertView.findViewById(0x7f0a00a9);
                if (!type.equals("0") && !type.equals("1") && !type.equals("2")) goto _L2; else goto _L1
_L1:
                ((TextView) (obj1)).setText((new StringBuilder("\u597D\u8BC4\u6570\uFF1A")).append(goods).toString());
_L4:
                obj1 = marker.getPosition();
                com.baidu.mapapi.map.MapStatusUpdate mapstatusupdate = MapStatusUpdateFactory.newLatLng(((LatLng) (obj1)));
                mBaiduMap.animateMapStatus(mapstatusupdate);
                mInfoWindow = new InfoWindow(BitmapDescriptorFactory.fromView(convertView), ((LatLng) (obj1)), -47, as);
                mBaiduMap.showInfoWindow(mInfoWindow);
                reseticon();
                as = (new MarkerOptions()).icon(bdB).position(marker.getPosition()).title((new StringBuilder(String.valueOf(name))).append(",").append(goods).append(",").append(url).append(",").append(type).toString());
                marker.remove();
                marker = (Marker)mBaiduMap.addOverlay(as);
                return true;
_L2:
                if (type.equals("3"))
                {
                    ((TextView) (obj1)).setText((new StringBuilder("\u8BC4\u8BBA\u6570\uFF1A")).append(goods).toString());
                }
                if (true) goto _L4; else goto _L3
_L3:
            }


            
            {
                this$0 = AroundFragment.this;
                super();
            }
        });
        mBaiduMap.setOnMapClickListener(new com.baidu.mapapi.map.BaiduMap.OnMapClickListener() {

            final AroundFragment this$0;

            public void onMapClick(LatLng latlng)
            {
                mBaiduMap.hideInfoWindow();
            }

            public boolean onMapPoiClick(MapPoi mappoi)
            {
                mBaiduMap.hideInfoWindow();
                return false;
            }

            
            {
                this$0 = AroundFragment.this;
                super();
            }
        });
    }

    public void initOverlay()
    {
        WindowManager windowmanager = (WindowManager)getActivity().getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        mScreenWitdh = displaymetrics.widthPixels;
        md = ComData.getInstance().getMapData();
        if (md == null || md.size() <= 0) goto _L2; else goto _L1
_L1:
        final Button Btn[];
        android.widget.RelativeLayout.LayoutParams layoutparams;
        int i;
        Btn = new Button[md.size()];
        layoutparams = new android.widget.RelativeLayout.LayoutParams(1, -2);
        i = 0;
_L5:
        if (i < md.size()) goto _L4; else goto _L3
_L3:
        i = 0;
_L6:
        if (i < md.size())
        {
            break MISSING_BLOCK_LABEL_309;
        }
_L2:
        listHandler.sendEmptyMessage(0);
        return;
_L4:
        Btn[i] = new Button(getActivity());
        iv = new ImageView(getActivity());
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(mScreenWitdh / 4, -2);
        Btn[i].setText(((MapData)md.get(i)).getName());
        if (i == 0)
        {
            Btn[i].setTextColor(getResources().getColorStateList(0x7f080000));
        } else
        {
            Btn[i].setTextColor(getResources().getColorStateList(0x7f080006));
        }
        Btn[i].setBackgroundColor(-1);
        Btn[i].setGravity(17);
        iv.setBackgroundResource(0x7f02005b);
        mGallery.addView(Btn[i], layoutparams1);
        mGallery.addView(iv, layoutparams);
        i++;
          goto _L5
        Btn[i].setTag(Integer.valueOf(i));
        Btn[i].setOnClickListener(new android.view.View.OnClickListener() {

            final AroundFragment this$0;
            private final Button val$Btn[];

            public void onClick(View view1)
            {
                int j = 0;
                do
                {
                    if (j >= md.size())
                    {
                        j = ((Integer)view1.getTag()).intValue();
                        Btn[j].setTextColor(getResources().getColorStateList(0x7f080000));
                        Commit(((MapData)md.get(j)).getName());
                        return;
                    }
                    Btn[j].setTextColor(getResources().getColorStateList(0x7f080006));
                    j++;
                } while (true);
            }

            
            {
                this$0 = AroundFragment.this;
                Btn = abutton;
                super();
            }
        });
        i++;
          goto _L6
    }

    public void initOverlay2()
    {
        List list = ComData.getInstance().getMapCustom();
        if (!isAdded() || lat.equals("") || lon.equals("")) goto _L2; else goto _L1
_L1:
        com.baidu.mapapi.map.MapStatusUpdate mapstatusupdate = MapStatusUpdateFactory.newLatLng(new LatLng(Double.valueOf(lat).doubleValue(), Double.valueOf(lon).doubleValue()));
        mBaiduMap.setMapStatus(mapstatusupdate);
        if (list == null) goto _L2; else goto _L3
_L3:
        int i = 0;
_L6:
        if (i < list.size()) goto _L4; else goto _L2
_L2:
        return;
_L4:
        Object obj = new LatLng(Double.parseDouble(((MapCustom)list.get(i)).getLat()), Double.parseDouble(((MapCustom)list.get(i)).getLng()));
        obj = (new MarkerOptions()).position(((LatLng) (obj))).icon(bdA).title((new StringBuilder(String.valueOf(((MapCustom)list.get(i)).getName()))).append(",").append(((MapCustom)list.get(i)).getGoods()).append(",").append(((MapCustom)list.get(i)).getBusiness_url()).append(",").append(((MapCustom)list.get(i)).getType()).toString());
        mBaiduMap.addOverlay(((com.baidu.mapapi.map.OverlayOptions) (obj)));
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 1) goto _L2; else goto _L1
_L1:
        if (intent == null) goto _L4; else goto _L3
_L3:
        Object obj = intent.getExtras().getString("name");
        String s = intent.getExtras().getString("goods");
        String s1 = intent.getExtras().getString("url");
        String s2 = intent.getExtras().getString("type");
        double d = intent.getExtras().getDouble("lat", 0.0D);
        double d1 = intent.getExtras().getDouble("lon", 0.0D);
        if (isAdded())
        {
            ComData.getInstance().setMapCustom(null);
            mBaiduMap.clear();
            clearOverlay(null);
            LatLng latlng = new LatLng(Double.valueOf(d).doubleValue(), Double.valueOf(d1).doubleValue());
            com.baidu.mapapi.map.MapStatusUpdate mapstatusupdate = MapStatusUpdateFactory.newLatLng(latlng);
            mBaiduMap.setMapStatus(mapstatusupdate);
            obj = (new MarkerOptions()).position(latlng).icon(bdA).title((new StringBuilder(String.valueOf(obj))).append(",").append(s).append(",").append(s1).append(",").append(s2).toString());
            mBaiduMap.addOverlay(((com.baidu.mapapi.map.OverlayOptions) (obj)));
        }
_L7:
        super.onActivityResult(i, j, intent);
_L4:
        return;
_L2:
        if (i != 2)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (intent == null) goto _L4; else goto _L5
_L5:
        ComData.getInstance().setMapCustom(null);
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void onClick(View view1)
    {
        if (!view1.equals(btn_location))
        {
            break MISSING_BLOCK_LABEL_63;
        }
        if (!location_isClicked) goto _L2; else goto _L1
_L1:
        location_isClicked = false;
        tag = 1;
        showLoading(true);
        if (!checkNetWork()) goto _L4; else goto _L3
_L3:
        getLocation();
_L2:
        return;
_L4:
        showMsgToast(getString(0x7f060032));
        hideLoading();
        location_isClicked = true;
        return;
        if (view1.equals(layout_more))
        {
            startActivityForResult(new Intent(getActivity(), com/pubinfo/izhejiang/AroundMoreActivity), 2);
            return;
        }
          goto _L2
        view1;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        view = layoutinflater.inflate(0x7f03001a, viewgroup, false);
        getActivity().getWindow().setFormat(-3);
        scrollView = (HorizontalScrollView)view.findViewById(0x7f0a0060);
        relativelayout_Map = (RelativeLayout)view.findViewById(0x7f0a007e);
        layout1 = (LinearLayout)view.findViewById(0x7f0a0044);
        loadingImageView = (ImageView)view.findViewById(0x7f0a006b);
        loadingImageView.measure(0, 0);
        loadingAnimationDrawable = (AnimationDrawable)loadingImageView.getBackground();
        loadingRelativeLayout = (RelativeLayout)view.findViewById(0x7f0a0082);
        progressTextView = (TextView)view.findViewById(0x7f0a006c);
        progressTextView2 = (TextView)view.findViewById(0x7f0a006d);
        mGallery = (LinearLayout)view.findViewById(0x7f0a007d);
        layout_more = (LinearLayout)view.findViewById(0x7f0a007c);
        layout_more.setOnClickListener(this);
        btn_location = (ImageButton)view.findViewById(0x7f0a0080);
        btn_location.setOnClickListener(this);
        mMapView = (MapView)view.findViewById(0x7f0a007f);
        mBaiduMap = mMapView.getMap();
        hideZoomView(mMapView);
        zcvZomm = (ZoomControlsView)view.findViewById(0x7f0a0081);
        zcvZomm.setMapView(mMapView);
        layoutinflater = MapStatusUpdateFactory.newLatLng(new LatLng(30.281580900000002D, 120.157499D));
        mBaiduMap.setMapStatus(layoutinflater);
        factory = LayoutInflater.from(getActivity());
        listHandler = new Handler() {

            final AroundFragment this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 0 6: default 48
            //                           0 49
            //                           1 86
            //                           2 104
            //                           3 186
            //                           4 243
            //                           5 281
            //                           6 364;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
                return;
_L2:
                layout_more.setVisibility(0);
                if (isAdded())
                {
                    showLoading(true);
                    getLocation();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L3:
                if (isAdded())
                {
                    initOverlay();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L4:
                if (isAdded())
                {
                    hideLoading();
                    md = ComData.getInstance().getMapData();
                    if (md != null && md.size() > 0)
                    {
                        Commit(((MapData)md.get(0)).getName());
                        return;
                    }
                }
                continue; /* Loop/switch isn't completed */
_L5:
                if (isAdded())
                {
                    hideLoading();
                    relativelayout_Map.setVisibility(8);
                    scrollView.setVisibility(8);
                    layout1.setVisibility(0);
                    AroundFragment.location_isClicked = true;
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L6:
                if (isAdded())
                {
                    AroundFragment.location_isClicked = true;
                    hideLoading();
                    showMsgToast(getString(0x7f060032));
                    return;
                }
                if (true) goto _L1; else goto _L7
_L7:
                if (!isAdded()) goto _L10; else goto _L9
_L9:
                hideLoading();
                message = ComData.getInstance().getpError();
                if (message == null || message.size() <= 0) goto _L10; else goto _L11
_L11:
                int i = 0;
_L13:
                if (i < message.size()) goto _L12; else goto _L10
_L10:
                AroundFragment.location_isClicked = true;
                return;
_L12:
                String s = ((PublicError)message.get(i)).getMessage();
                showMsgToast(s);
                i++;
                if (true) goto _L13; else goto _L8
_L8:
                if (isAdded())
                {
                    initOverlay2();
                    return;
                }
                if (true) goto _L1; else goto _L14
_L14:
            }

            
            {
                this$0 = AroundFragment.this;
                super();
            }
        };
        md = ComData.getInstance().getMapData();
        (new MyThread()).start();
        return view;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (mMapView != null && mLocationClient != null)
        {
            mLocationClient.stop();
            mBaiduMap.setMyLocationEnabled(false);
            mMapView.onDestroy();
            mMapView = null;
            super.onDestroy();
            bdA.recycle();
            bdB.recycle();
        }
    }

    public void onPause()
    {
        super.onPause();
        if (mMapView != null)
        {
            SDKInitializer.initialize(getActivity());
            mBaiduMap = mMapView.getMap();
            mMapView.setVisibility(4);
            mMapView.onPause();
            super.onPause();
        }
    }

    public void onResume()
    {
        super.onResume();
        if (mMapView != null)
        {
            SDKInitializer.initialize(getActivity());
            mBaiduMap = mMapView.getMap();
            mMapView.setVisibility(0);
            mMapView.onResume();
            super.onResume();
        }
    }

    public void resetOverlay(View view1)
    {
        clearOverlay(null);
    }

    public void reseticon()
    {
        List list = ComData.getInstance().getMapCustom();
        if (list == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < list.size()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        Object obj = new LatLng(Double.parseDouble(((MapCustom)list.get(i)).getLat()), Double.parseDouble(((MapCustom)list.get(i)).getLng()));
        obj = (new MarkerOptions()).position(((LatLng) (obj))).icon(bdA).title((new StringBuilder(String.valueOf(((MapCustom)list.get(i)).getName()))).append(",").append(((MapCustom)list.get(i)).getGoods()).append(",").append(((MapCustom)list.get(i)).getBusiness_url()).append(",").append(((MapCustom)list.get(i)).getType()).toString());
        mBaiduMap.addOverlay(((com.baidu.mapapi.map.OverlayOptions) (obj)));
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void showMsgToast(String s)
    {
        Toast.makeText(getActivity(), s, 0).show();
    }











}

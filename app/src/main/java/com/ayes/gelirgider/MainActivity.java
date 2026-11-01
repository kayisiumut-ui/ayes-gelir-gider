package com.ayes.gelirgider;
import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebSettings;
public class MainActivity extends Activity {
 WebView web;
 @Override public void onCreate(Bundle b) { super.onCreate(b); web=new WebView(this); setContentView(web); WebSettings s=web.getSettings(); s.setJavaScriptEnabled(true); s.setDomStorageEnabled(true); web.setWebViewClient(new WebViewClient()); web.loadUrl("file:///android_asset/index.html"); }
 @Override public void onBackPressed() { if(web.canGoBack())web.goBack(); else super.onBackPressed(); }
}
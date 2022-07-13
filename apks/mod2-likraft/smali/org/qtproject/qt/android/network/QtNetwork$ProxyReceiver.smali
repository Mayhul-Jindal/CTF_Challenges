.class Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QtNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/network/QtNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/network/QtNetwork$1;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 62
    invoke-static {p1}, Lorg/qtproject/qt/android/network/QtNetwork;->access$002(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    return-void
.end method

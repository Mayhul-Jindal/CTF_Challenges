.class public Lorg/qtproject/qt/android/network/QtNetwork;
.super Ljava/lang/Object;
.source "QtNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtNetwork"

.field private static final m_lock:Ljava/lang/Object;

.field private static m_proxyInfo:Landroid/net/ProxyInfo;

.field private static m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0

    .line 50
    sput-object p0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static getProxyInfo(Landroid/content/Context;)Landroid/net/ProxyInfo;
    .locals 1

    .line 96
    sget-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Lorg/qtproject/qt/android/network/QtNetwork;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    sput-object p0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    .line 98
    :cond_0
    sget-object p0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 3

    .line 70
    sget-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;-><init>(Lorg/qtproject/qt/android/network/QtNetwork$1;)V

    sput-object v1, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    sget-object v2, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .locals 2

    .line 81
    sget-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    if-nez v1, :cond_0

    .line 83
    monitor-exit v0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

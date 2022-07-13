.class public Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.super Ljava/lang/Object;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;,
        Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;,
        Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtAndroidNetworkInformation"

.field private static m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

.field private static final m_lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZZ)V
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->genericInfoChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->connectivityChanged(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    return-void
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->transportMediumChanged(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V

    return-void
.end method

.method private static native connectivityChanged(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V
.end method

.method private static native genericInfoChanged(ZZ)V
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 4

    .line 163
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    if-nez v1, :cond_2

    .line 165
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 166
    new-instance v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    invoke-direct {v1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    .line 167
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 168
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    :cond_0
    const/16 v2, 0xc

    .line 170
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 171
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    const/16 v2, 0x15

    .line 172
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x13

    .line 173
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 175
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 179
    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    invoke-virtual {p0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 181
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static state()Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    .locals 1

    .line 156
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    iget-object v0, v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object v0

    .line 158
    :cond_0
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object v0
.end method

.method private static native transportMediumChanged(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .locals 2

    .line 185
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    if-eqz v1, :cond_0

    .line 187
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p0, 0x0

    .line 188
    sput-object p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    .line 190
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

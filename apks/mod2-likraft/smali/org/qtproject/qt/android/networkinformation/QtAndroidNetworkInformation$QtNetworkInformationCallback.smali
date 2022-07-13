.class Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QtNetworkInformationCallback"
.end annotation


# instance fields
.field public previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 80
    iput-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-void
.end method

.method private getTransport(Landroid/net/NetworkCapabilities;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .locals 1

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_1
    const/4 v0, 0x2

    .line 115
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_2
    const/4 v0, 0x3

    .line 117
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_3
    const/4 v0, 0x5

    .line 119
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_4
    const/4 v0, 0x6

    .line 122
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 124
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 129
    :cond_5
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1
.end method

.method private setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    if-eq v0, p1, :cond_0

    .line 134
    iput-object p1, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 135
    invoke-static {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$100(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    :cond_0
    return-void
.end method

.method private setTransportMedium(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    if-eq v0, p1, :cond_0

    .line 141
    iput-object p1, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 142
    invoke-static {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$200(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    const/16 p1, 0xc

    .line 88
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 90
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    goto :goto_0

    .line 93
    :cond_1
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 95
    :goto_0
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->getTransport(Landroid/net/NetworkCapabilities;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    move-result-object v0

    .line 96
    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    if-ne v0, v1, :cond_2

    .line 97
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 99
    :cond_2
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    .line 100
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setTransportMedium(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V

    const/16 p1, 0x11

    .line 103
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/16 v0, 0xb

    .line 105
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 106
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$000(ZZ)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 148
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    return-void
.end method

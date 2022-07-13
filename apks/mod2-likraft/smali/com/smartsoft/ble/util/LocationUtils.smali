.class public Lcom/smartsoft/ble/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationUtil"

.field static locationListener:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/smartsoft/ble/util/LocationUtils$2;

    invoke-direct {v0}, Lcom/smartsoft/ble/util/LocationUtils$2;-><init>()V

    sput-object v0, Lcom/smartsoft/ble/util/LocationUtils;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/smartsoft/ble/util/LocationUtils;->startLocation(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/location/Location;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/smartsoft/ble/util/LocationUtils;->saveLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static requestLocation(Landroid/content/Context;Lcom/smartsoft/ble/Bluetooth;)V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 32
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/smartsoft/ble/util/LocationUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/smartsoft/ble/util/LocationUtils$1;-><init>(Landroid/content/Context;Lcom/smartsoft/ble/Bluetooth;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/smartsoft/ble/util/XPermissionUtils;->requestPermissions(Landroid/content/Context;I[Ljava/lang/String;Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;)V

    return-void
.end method

.method private static saveLocation(Landroid/location/Location;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 140
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    :cond_0
    return-void
.end method

.method private static startLocation(Landroid/content/Context;)V
    .locals 7

    const-string v0, "location"

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    const/4 v0, 0x1

    .line 58
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 64
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 66
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 78
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "gps"

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "network"

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "passive"

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, ""

    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 93
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 99
    invoke-static {v3}, Lcom/smartsoft/ble/util/LocationUtils;->saveLocation(Landroid/location/Location;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_6
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    const-wide/16 v3, 0xbb8

    const/high16 v5, 0x3f800000    # 1.0f

    .line 106
    sget-object v6, Lcom/smartsoft/ble/util/LocationUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_7
    return-void
.end method

.class public Lcom/smartsoft/ble/util/XPermissionUtils;
.super Ljava/lang/Object;
.source "XPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;
    }
.end annotation


# static fields
.field private static sListener:Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener; = null

.field private static sRequestCode:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    sput-object v0, Lcom/smartsoft/ble/util/XPermissionUtils;->sListener:Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;

    const/4 v0, -0x1

    .line 130
    sput v0, Lcom/smartsoft/ble/util/XPermissionUtils;->sRequestCode:I

    return-void
.end method

.method private static getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 104
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static varargs hasAlwaysDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 119
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 120
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 85
    sget p3, Lcom/smartsoft/ble/util/XPermissionUtils;->sRequestCode:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    if-ne p1, p3, :cond_1

    .line 86
    sget-object p1, Lcom/smartsoft/ble/util/XPermissionUtils;->sListener:Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;

    if-eqz p1, :cond_1

    .line 87
    invoke-static {p0, p2}, Lcom/smartsoft/ble/util/XPermissionUtils;->getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 88
    array-length p3, p1

    if-lez p3, :cond_0

    .line 89
    invoke-static {p0, p2}, Lcom/smartsoft/ble/util/XPermissionUtils;->hasAlwaysDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    .line 90
    sget-object p2, Lcom/smartsoft/ble/util/XPermissionUtils;->sListener:Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;

    invoke-interface {p2, p1, p0}, Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;->onPermissionDenied([Ljava/lang/String;Z)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object p0, Lcom/smartsoft/ble/util/XPermissionUtils;->sListener:Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;

    invoke-interface {p0}, Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;->onPermissionGranted()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestPermissions(Landroid/content/Context;I[Ljava/lang/String;Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;)V
    .locals 1

    .line 68
    sput p1, Lcom/smartsoft/ble/util/XPermissionUtils;->sRequestCode:I

    .line 69
    sput-object p3, Lcom/smartsoft/ble/util/XPermissionUtils;->sListener:Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;

    .line 70
    invoke-static {p0, p2}, Lcom/smartsoft/ble/util/XPermissionUtils;->getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 71
    array-length p3, p3

    if-lez p3, :cond_0

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_0

    .line 72
    invoke-static {p0, p2, p1}, Lcom/smartsoft/ble/util/XPermissionUtils;->requestPermissionsAgain(Landroid/content/Context;[Ljava/lang/String;I)V

    goto :goto_0

    .line 74
    :cond_0
    sget-object p0, Lcom/smartsoft/ble/util/XPermissionUtils;->sListener:Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;

    if-eqz p0, :cond_1

    .line 75
    invoke-interface {p0}, Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;->onPermissionGranted()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestPermissionsAgain(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 1

    .line 59
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must be an Activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

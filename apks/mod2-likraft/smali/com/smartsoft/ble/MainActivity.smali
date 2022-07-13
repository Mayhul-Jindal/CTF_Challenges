.class public Lcom/smartsoft/ble/MainActivity;
.super Lorg/qtproject/qt/android/bindings/QtActivity;
.source "MainActivity.java"


# instance fields
.field public mBluetooth:Lcom/smartsoft/ble/Bluetooth;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/smartsoft/ble/MainActivity;->mBluetooth:Lcom/smartsoft/ble/Bluetooth;

    return-void
.end method

.method public static clearAllCache(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/smartsoft/ble/MainActivity;->deleteDir(Ljava/io/File;)Z

    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/smartsoft/ble/MainActivity;->deleteDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 5

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 100
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 101
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/smartsoft/ble/MainActivity;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getSerialNumber()Ljava/lang/String;
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/smartsoft/ble/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "android_id"

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "phone"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 87
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/qtproject/qt/android/bindings/QtActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/smartsoft/ble/util/XPermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/qtproject/qt/android/bindings/QtActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

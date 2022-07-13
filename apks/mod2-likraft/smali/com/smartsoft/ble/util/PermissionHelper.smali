.class public Lcom/smartsoft/ble/util/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAudioEnable()Z
    .locals 9

    const/16 v0, 0x1f40

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 25
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 26
    new-array v1, v0, [S

    .line 27
    new-instance v2, Landroid/media/AudioRecord;

    const/4 v4, 0x1

    const/16 v5, 0x1f40

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v2

    move v8, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    const/4 v3, 0x0

    .line 32
    :try_start_0
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    const/4 v1, -0x3

    if-eq v1, v0, :cond_0

    const/4 v3, 0x1

    .line 52
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 53
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return v3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    .line 39
    :goto_1
    throw v0
.end method

.method public static isCameraEnable()Z
    .locals 2

    .line 68
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 78
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return v1
.end method

.method public static isLocServiceEnable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "location"

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 92
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "network"

    .line 93
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.class public Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;
.super Ljava/lang/Object;
.source "QtMultimediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;
    }
.end annotation


# static fields
.field private static m_context:Landroid/content/Context;

.field private static m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enableOrientationListener(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 93
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;->enable()V

    goto :goto_0

    .line 95
    :cond_0
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;->disable()V

    :goto_0
    return-void
.end method

.method static getDefaultMediaDirectory(I)Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_2
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 120
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 125
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_3
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 131
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDeviceOrientation()I
    .locals 1

    .line 100
    sget v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;->deviceOrientation:I

    return v0
.end method

.method private static getMediaCodecs()[Ljava/lang/String;
    .locals 4

    .line 149
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 150
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 151
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 152
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 153
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static registerMediaFile(Ljava/lang/String;)V
    .locals 3

    .line 138
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    .line 82
    sput-object p0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_context:Landroid/content/Context;

    .line 83
    new-instance v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;->m_orientationListener:Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;

    return-void
.end method

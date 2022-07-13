.class Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;
.super Landroid/view/OrientationEventListener;
.source "QtMultimediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrientationListener"
.end annotation


# static fields
.field public static deviceOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 69
    :cond_0
    sput p1, Lorg/qtproject/qt/android/multimedia/QtMultimediaUtils$OrientationListener;->deviceOrientation:I

    return-void
.end method

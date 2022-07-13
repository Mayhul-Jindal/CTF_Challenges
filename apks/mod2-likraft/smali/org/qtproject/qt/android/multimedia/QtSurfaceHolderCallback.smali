.class public Lorg/qtproject/qt/android/multimedia/QtSurfaceHolderCallback;
.super Ljava/lang/Object;
.source "QtSurfaceHolderCallback.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private m_id:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceHolderCallback;->m_id:J

    .line 50
    iput-wide p1, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceHolderCallback;->m_id:J

    return-void
.end method

.method private static native notifySurfaceCreated(J)V
.end method

.method private static native notifySurfaceDestroyed(J)V
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceHolderCallback;->m_id:J

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/multimedia/QtSurfaceHolderCallback;->notifySurfaceCreated(J)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceHolderCallback;->m_id:J

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/multimedia/QtSurfaceHolderCallback;->notifySurfaceDestroyed(J)V

    return-void
.end method

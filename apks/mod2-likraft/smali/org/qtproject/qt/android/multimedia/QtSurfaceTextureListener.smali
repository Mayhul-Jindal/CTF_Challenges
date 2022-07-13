.class public Lorg/qtproject/qt/android/multimedia/QtSurfaceTextureListener;
.super Ljava/lang/Object;
.source "QtSurfaceTextureListener.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final m_id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceTextureListener;->m_id:J

    return-void
.end method

.method private static native notifyFrameAvailable(J)V
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceTextureListener;->m_id:J

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/multimedia/QtSurfaceTextureListener;->notifyFrameAvailable(J)V

    return-void
.end method

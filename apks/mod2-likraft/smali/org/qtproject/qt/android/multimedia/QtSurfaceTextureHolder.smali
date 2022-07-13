.class public Lorg/qtproject/qt/android/multimedia/QtSurfaceTextureHolder;
.super Ljava/lang/Object;
.source "QtSurfaceTextureHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# instance fields
.field private surfaceTexture:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceTextureHolder;->surfaceTexture:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtSurfaceTextureHolder;->surfaceTexture:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 88
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 0

    .line 82
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    return-object p1
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    return-void
.end method

.method public setSizeFromLayout()V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

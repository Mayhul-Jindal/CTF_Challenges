.class public Lorg/qtproject/qt/android/multimedia/QtCameraListener;
.super Ljava/lang/Object;
.source "QtCameraListener.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final BUFFER_POOL_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Qt Camera"


# instance fields
.field private m_cameraId:I

.field private m_lastPreviewBuffer:[B

.field private m_notifyNewFrames:Z

.field private m_notifyWhenFrameAvailable:Z

.field private m_previewBuffers:[[B

.field private m_previewBytesPerLine:I

.field private m_previewFormat:I

.field private m_previewSize:Landroid/hardware/Camera$Size;


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyNewFrames:Z

    .line 70
    iput-boolean v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    .line 72
    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    .line 73
    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    const/16 v1, 0x11

    .line 74
    iput v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    .line 75
    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    .line 79
    iput p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    return-void
.end method

.method private static native notifyAutoFocusComplete(IZ)V
.end method

.method private static native notifyFrameAvailable(I)V
.end method

.method private static native notifyNewPreviewFrame(I[BIIII)V
.end method

.method private static native notifyPictureCaptured(I[B)V
.end method

.method private static native notifyPictureExposed(I)V
.end method


# virtual methods
.method public clearPreviewCallback(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public lastPreviewBuffer()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    return-object v0
.end method

.method public notifyNewFrames(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyNewFrames:Z

    return-void
.end method

.method public notifyWhenFrameAvailable(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 271
    iget p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {p2, p1}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyAutoFocusComplete(IZ)V

    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10

    .line 212
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 214
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p2, "Orientation"

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, p2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/16 p2, 0x10e

    goto :goto_0

    :cond_1
    const/16 p2, 0x5a

    goto :goto_0

    :cond_2
    const/16 p2, 0xb4

    .line 233
    :goto_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 234
    iget v2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 236
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .line 238
    array-length p2, p1

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 239
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v2

    .line 240
    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 242
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 243
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v8, v0, v1, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 246
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 247
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p2

    .line 246
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 254
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    iget p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {p2, v1}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyPictureCaptured(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string v0, "Qt Camera"

    const-string v1, "Error fixing bitmap orientation."

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    iget p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {p2, p1}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyPictureCaptured(I[B)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    .line 183
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 186
    :cond_0
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    if-eqz p1, :cond_2

    .line 189
    iget-boolean p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 190
    iput-boolean p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyWhenFrameAvailable:Z

    .line 191
    iget p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {p2}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyFrameAvailable(I)V

    .line 193
    :cond_1
    iget-boolean p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_notifyNewFrames:Z

    if-eqz p2, :cond_2

    .line 194
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    iget-object p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget-object p2, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    iget v5, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyNewPreviewFrame(I[BIIII)V

    :cond_2
    return-void
.end method

.method public onShutter()V
    .locals 1

    .line 205
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_cameraId:I

    invoke-static {v0}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->notifyPictureExposed(I)V

    return-void
.end method

.method public previewBytesPerLine()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    return v0
.end method

.method public previewFormat()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    return v0
.end method

.method public previewHeight()I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 110
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    return v0
.end method

.method public previewWidth()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 102
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    return v0
.end method

.method public setupPreviewCallback(Landroid/hardware/Camera;)V
    .locals 6

    .line 131
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->clearPreviewCallback(Landroid/hardware/Camera;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_lastPreviewBuffer:[B

    .line 134
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    .line 136
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    const/4 v1, 0x2

    const v2, 0x32315659

    if-ne v0, v2, :cond_0

    .line 141
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/lit8 v0, v0, 0x10

    .line 142
    div-int/lit8 v2, v0, 0x2

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x10

    .line 143
    iget-object v3, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v0

    .line 144
    iget-object v4, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v4

    div-int/2addr v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v3, v2

    .line 147
    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    .line 151
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 154
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    const/16 v2, 0x14

    if-eq v0, v2, :cond_2

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBytesPerLine:I

    .line 170
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    aget-object v0, v0, v2

    array-length v0, v0

    if-eq v0, v3, :cond_4

    :cond_3
    new-array v0, v1, [I

    const/4 v4, 0x1

    aput v3, v0, v4

    aput v1, v0, v2

    .line 171
    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    .line 174
    :cond_4
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 175
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtCameraListener;->m_previewBuffers:[[B

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 176
    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.class Lorg/qtproject/qt/android/QtNative$24;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->createSurface(IZIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:I

.field final synthetic val$id:I

.field final synthetic val$imageDepth:I

.field final synthetic val$onTop:Z

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(IZIIIII)V
    .locals 0

    .line 1257
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$24;->val$id:I

    iput-boolean p2, p0, Lorg/qtproject/qt/android/QtNative$24;->val$onTop:Z

    iput p3, p0, Lorg/qtproject/qt/android/QtNative$24;->val$x:I

    iput p4, p0, Lorg/qtproject/qt/android/QtNative$24;->val$y:I

    iput p5, p0, Lorg/qtproject/qt/android/QtNative$24;->val$w:I

    iput p6, p0, Lorg/qtproject/qt/android/QtNative$24;->val$h:I

    iput p7, p0, Lorg/qtproject/qt/android/QtNative$24;->val$imageDepth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1260
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1261
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v1

    iget v2, p0, Lorg/qtproject/qt/android/QtNative$24;->val$id:I

    iget-boolean v3, p0, Lorg/qtproject/qt/android/QtNative$24;->val$onTop:Z

    iget v4, p0, Lorg/qtproject/qt/android/QtNative$24;->val$x:I

    iget v5, p0, Lorg/qtproject/qt/android/QtNative$24;->val$y:I

    iget v6, p0, Lorg/qtproject/qt/android/QtNative$24;->val$w:I

    iget v7, p0, Lorg/qtproject/qt/android/QtNative$24;->val$h:I

    iget v8, p0, Lorg/qtproject/qt/android/QtNative$24;->val$imageDepth:I

    invoke-virtual/range {v1 .. v8}, Lorg/qtproject/qt/android/QtActivityDelegate;->createSurface(IZIIIII)V

    :cond_0
    return-void
.end method

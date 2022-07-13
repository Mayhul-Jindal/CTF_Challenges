.class Lorg/qtproject/qt/android/QtNative$10;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->updateHandles(IIIIIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$editButtons:I

.field final synthetic val$editX:I

.field final synthetic val$editY:I

.field final synthetic val$mode:I

.field final synthetic val$rtl:Z

.field final synthetic val$x1:I

.field final synthetic val$x2:I

.field final synthetic val$y1:I

.field final synthetic val$y2:I


# direct methods
.method constructor <init>(IIIIIIIIZ)V
    .locals 0

    .line 901
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$10;->val$mode:I

    iput p2, p0, Lorg/qtproject/qt/android/QtNative$10;->val$editX:I

    iput p3, p0, Lorg/qtproject/qt/android/QtNative$10;->val$editY:I

    iput p4, p0, Lorg/qtproject/qt/android/QtNative$10;->val$editButtons:I

    iput p5, p0, Lorg/qtproject/qt/android/QtNative$10;->val$x1:I

    iput p6, p0, Lorg/qtproject/qt/android/QtNative$10;->val$y1:I

    iput p7, p0, Lorg/qtproject/qt/android/QtNative$10;->val$x2:I

    iput p8, p0, Lorg/qtproject/qt/android/QtNative$10;->val$y2:I

    iput-boolean p9, p0, Lorg/qtproject/qt/android/QtNative$10;->val$rtl:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 904
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt/android/QtNative$10;->val$mode:I

    iget v2, p0, Lorg/qtproject/qt/android/QtNative$10;->val$editX:I

    iget v3, p0, Lorg/qtproject/qt/android/QtNative$10;->val$editY:I

    iget v4, p0, Lorg/qtproject/qt/android/QtNative$10;->val$editButtons:I

    iget v5, p0, Lorg/qtproject/qt/android/QtNative$10;->val$x1:I

    iget v6, p0, Lorg/qtproject/qt/android/QtNative$10;->val$y1:I

    iget v7, p0, Lorg/qtproject/qt/android/QtNative$10;->val$x2:I

    iget v8, p0, Lorg/qtproject/qt/android/QtNative$10;->val$y2:I

    iget-boolean v9, p0, Lorg/qtproject/qt/android/QtNative$10;->val$rtl:Z

    invoke-virtual/range {v0 .. v9}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateHandles(IIIIIIIIZ)V

    return-void
.end method

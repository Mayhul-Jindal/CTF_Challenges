.class Lorg/qtproject/qt/android/QtNative$9;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->updateSelection(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$candidatesEnd:I

.field final synthetic val$candidatesStart:I

.field final synthetic val$selEnd:I

.field final synthetic val$selStart:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 877
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$9;->val$selStart:I

    iput p2, p0, Lorg/qtproject/qt/android/QtNative$9;->val$selEnd:I

    iput p3, p0, Lorg/qtproject/qt/android/QtNative$9;->val$candidatesStart:I

    iput p4, p0, Lorg/qtproject/qt/android/QtNative$9;->val$candidatesEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 880
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt/android/QtNative$9;->val$selStart:I

    iget v2, p0, Lorg/qtproject/qt/android/QtNative$9;->val$selEnd:I

    iget v3, p0, Lorg/qtproject/qt/android/QtNative$9;->val$candidatesStart:I

    iget v4, p0, Lorg/qtproject/qt/android/QtNative$9;->val$candidatesEnd:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateSelection(IIII)V

    :cond_0
    return-void
.end method

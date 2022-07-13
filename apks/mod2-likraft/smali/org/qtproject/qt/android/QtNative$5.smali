.class Lorg/qtproject/qt/android/QtNative$5;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->setViewVisibility(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 616
    iput-object p1, p0, Lorg/qtproject/qt/android/QtNative$5;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/QtNative$5;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 619
    iget-object v0, p0, Lorg/qtproject/qt/android/QtNative$5;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lorg/qtproject/qt/android/QtNative$5;->val$visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

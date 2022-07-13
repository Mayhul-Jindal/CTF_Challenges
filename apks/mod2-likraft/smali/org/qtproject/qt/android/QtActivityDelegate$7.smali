.class Lorg/qtproject/qt/android/QtActivityDelegate$7;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$7;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 904
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$7;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

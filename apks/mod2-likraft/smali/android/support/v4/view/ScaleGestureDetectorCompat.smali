.class public Landroid/support/v4/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;,
        Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;,
        Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 60
    new-instance v0, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;-><init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V

    sput-object v0, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ScaleGestureDetectorCompat$BaseScaleGestureDetectorImpl;-><init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V

    sput-object v0, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    sget-object v0, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;->isQuickScaleEnabled(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .locals 1

    .line 75
    sget-object v0, Landroid/support/v4/view/ScaleGestureDetectorCompat;->IMPL:Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;->setQuickScaleEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

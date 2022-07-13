.class public Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field private mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 107
    new-instance v0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method private onAnimationsEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 77
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 81
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method

.method public play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 48
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public setDuration(J)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 87
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 88
    iput-wide p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 94
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .locals 1

    .line 101
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 6

    .line 55
    iget-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 57
    iget-wide v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 60
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 63
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 66
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    return-void
.end method

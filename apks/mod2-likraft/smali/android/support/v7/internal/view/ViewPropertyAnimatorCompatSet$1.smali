.class Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)V
    .locals 0

    .line 108
    iput-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 110
    iput p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 131
    iget p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->access$200(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 132
    iget-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-static {p1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-static {p1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->onEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-boolean p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 118
    iget-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-static {p1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-static {p1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method onEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    .line 125
    iput-boolean v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-static {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->access$100(Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)V

    return-void
.end method

.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .line 578
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 579
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 605
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 597
    iget-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 599
    :cond_0
    iget-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 600
    iget-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 591
    iget-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 592
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 0

    .line 584
    iput p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 585
    iget-object p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iput-object p1, p2, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p0
.end method

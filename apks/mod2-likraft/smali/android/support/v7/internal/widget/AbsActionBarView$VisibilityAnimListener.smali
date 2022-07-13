.class public Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Landroid/support/v7/internal/widget/AbsActionBarView;)V
    .locals 0

    .line 255
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 274
    iget-boolean p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 277
    iget-object p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    iget v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    iget-object p1, p1, Landroid/support/v7/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    iget-object p1, p1, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    iget-object p1, p1, Landroid/support/v7/internal/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 268
    iget-object p1, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 269
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/AbsActionBarView;

    iput-object p1, v0, Landroid/support/v7/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 262
    iput p2, p0, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method

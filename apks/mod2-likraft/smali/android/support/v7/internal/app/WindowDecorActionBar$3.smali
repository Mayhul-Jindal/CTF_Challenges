.class Landroid/support/v7/internal/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V
    .locals 0

    .line 164
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$3;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 0

    .line 167
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$3;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$200(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 168
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

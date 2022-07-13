.class Landroid/support/v7/internal/app/WindowDecorActionBar$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


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

    .line 135
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$000(Landroid/support/v7/internal/app/WindowDecorActionBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$100(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$100(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 140
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$200(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 142
    :cond_0
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$300(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$400(Landroid/support/v7/internal/app/WindowDecorActionBar;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 143
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$300(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 145
    :cond_1
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$200(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$200(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 147
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$502(Landroid/support/v7/internal/app/WindowDecorActionBar;Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 148
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-virtual {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 149
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$600(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$600(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_2
    return-void
.end method

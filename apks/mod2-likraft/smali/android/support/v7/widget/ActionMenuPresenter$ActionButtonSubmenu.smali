.class Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroid/support/v7/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Landroid/support/v7/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V
    .locals 6

    .line 686
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 687
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 689
    iput-object p3, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 691
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 692
    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p2

    if-nez p2, :cond_1

    .line 694
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$600(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 697
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 700
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 702
    invoke-virtual {p3, v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 703
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 713
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$702(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    return-void
.end method

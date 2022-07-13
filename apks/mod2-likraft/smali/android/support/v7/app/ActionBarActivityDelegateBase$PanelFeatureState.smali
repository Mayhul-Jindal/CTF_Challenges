.class final Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1433
    iput p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/4 p1, 0x0

    .line 1435
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .line 1530
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1531
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 1532
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    .line 1448
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    :cond_0
    const/4 v0, 0x0

    .line 1451
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    return-void
.end method

.method getListMenuView(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 3

    .line 1492
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1494
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_1

    .line 1495
    new-instance v0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    .line 1497
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 1498
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 1501
    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object p1

    return-object p1
.end method

.method public hasPanelItems()Z
    .locals 2

    .line 1439
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1520
    check-cast p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    .line 1521
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    iput v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    .line 1522
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->wasLastOpen:Z

    .line 1523
    iget-object p1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 1525
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1526
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1507
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V

    .line 1508
    iget v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iput v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    .line 1509
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    .line 1511
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1512
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1513
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 1480
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1483
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 1485
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_2

    .line 1487
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    :cond_2
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 4

    .line 1455
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1456
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1457
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1460
    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1461
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 1462
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1466
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1467
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1468
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 1470
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1473
    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1474
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1476
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    return-void
.end method

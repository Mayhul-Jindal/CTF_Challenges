.class public Landroid/support/v7/internal/app/ToolbarActionBar;
.super Landroid/support/v7/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/app/ToolbarActionBar$MenuBuilderCallback;,
        Landroid/support/v7/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;,
        Landroid/support/v7/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field private mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarMenuPrepared:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Landroid/support/v7/internal/app/WindowCallback;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Landroid/support/v7/internal/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/ToolbarActionBar$1;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Landroid/support/v7/internal/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/ToolbarActionBar$2;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 83
    iput-object p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 84
    new-instance v1, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    .line 85
    new-instance v1, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v1, p0, p4}, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/support/v7/internal/app/WindowCallback;)V

    iput-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    .line 86
    iget-object p4, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {p4, v1}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowCallback(Landroid/support/v7/internal/app/WindowCallback;)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 88
    iget-object p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {p1, p2}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 90
    iput-object p3, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindow:Landroid/view/Window;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/internal/app/WindowCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/app/ToolbarActionBar;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p0
.end method

.method static synthetic access$1000(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Window;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$102(Landroid/support/v7/internal/app/ToolbarActionBar;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/internal/widget/DecorToolbar;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/app/ToolbarActionBar;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Menu;
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/internal/app/ToolbarActionBar;->getListMenuView(Landroid/view/Menu;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getListMenuView(Landroid/view/Menu;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 499
    iget-object p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-nez p1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 504
    iget-object p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 4

    .line 550
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/support/v7/internal/app/ToolbarActionBar$1;)V

    new-instance v3, Landroid/support/v7/internal/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v3, p0, v2}, Landroid/support/v7/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/support/v7/internal/app/ToolbarActionBar$1;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/Toolbar;->setMenuCallbacks(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 479
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 1

    .line 343
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .locals 0

    .line 355
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 0

    .line 361
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 0

    .line 349
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public collapseActionView()Z
    .locals 1

    .line 444
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3

    .line 487
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 490
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 492
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 494
    iget-object v2, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .line 397
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTabCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 309
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/support/v7/internal/app/WindowCallback;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 422
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .line 437
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 438
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/support/v7/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public newTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 472
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->openOptionsMenu()Z

    :cond_0
    return v0
.end method

.method public openOptionsMenu()Z
    .locals 1

    .line 432
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    .line 452
    invoke-direct {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 453
    instance-of v1, v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 455
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 458
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 459
    iget-object v3, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/support/v7/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v3, v4, v2, v0}, Landroid/support/v7/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 461
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 465
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v0
.end method

.method public removeAllTabs()V
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .line 483
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 1

    .line 367
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTabAt(I)V
    .locals 1

    .line 373
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 1

    .line 385
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    .line 110
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .line 99
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 0

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object p2, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {p2, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1

    const/4 v0, -0x1

    .line 263
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 269
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 294
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 279
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 289
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListMenuPresenter(Landroid/support/v7/internal/view/menu/ListMenuPresenter;)V
    .locals 3

    .line 558
    invoke-direct {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 560
    instance-of v1, v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 561
    check-cast v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 563
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 566
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 569
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-eqz p1, :cond_1

    .line 572
    new-instance v1, Landroid/support/v7/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/support/v7/internal/app/ToolbarActionBar$1;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    :cond_1
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .locals 2

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    new-instance v1, Landroid/support/v7/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Landroid/support/v7/internal/app/NavItemSelectedListener;-><init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v7/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setNavigationMode(I)V

    return-void

    .line 325
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tabs not supported in this configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    return-void

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setSubtitle(I)V
    .locals 2

    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 243
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 248
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/app/WindowCallback;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

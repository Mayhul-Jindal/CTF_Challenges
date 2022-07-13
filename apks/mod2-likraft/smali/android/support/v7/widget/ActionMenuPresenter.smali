.class public Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field private mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 86
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 72
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 82
    new-instance p1, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object p0
.end method

.method static synthetic access$202(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0

    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p0
.end method

.method static synthetic access$302(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0

    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p0
.end method

.method static synthetic access$702(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0

    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$800(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object p0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 285
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 287
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 288
    instance-of v5, v4, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    invoke-interface {v5}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-interface {p2, p1, v0}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    .line 186
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    .line 187
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 188
    invoke-virtual {p2, p1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 190
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez p1, :cond_0

    .line 191
    new-instance p1, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 193
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {p2, p1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 256
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 257
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .locals 19

    move-object/from16 v0, p0

    .line 379
    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 381
    iget v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 382
    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/4 v5, 0x0

    .line 383
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 384
    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    move v8, v5

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v8, v2, :cond_3

    .line 391
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 392
    invoke-virtual {v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 394
    :cond_0
    invoke-virtual {v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    .line 399
    :goto_1
    iget-boolean v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v12, :cond_2

    invoke-virtual {v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_2

    move v3, v5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 407
    :cond_3
    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    add-int/2addr v11, v10

    if-le v11, v3, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    :cond_5
    sub-int/2addr v3, v10

    .line 413
    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 414
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->clear()V

    .line 418
    iget-boolean v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v9, :cond_6

    .line 419
    iget v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v10, v4, v9

    .line 420
    rem-int v11, v4, v9

    .line 421
    div-int/2addr v11, v10

    add-int/2addr v9, v11

    goto :goto_2

    :cond_6
    move v9, v5

    move v10, v9

    :goto_2
    move v11, v5

    move v13, v11

    :goto_3
    if-ge v11, v2, :cond_1c

    .line 426
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 428
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 429
    iget-object v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 430
    iget-object v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v12, :cond_7

    .line 431
    iput-object v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 433
    :cond_7
    iget-boolean v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v12, :cond_8

    .line 434
    invoke-static {v15, v9, v10, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v10, v12

    goto :goto_4

    .line 437
    :cond_8
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 439
    :goto_4
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v4, v12

    if-nez v13, :cond_9

    move v13, v12

    .line 444
    :cond_9
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v12

    const/4 v15, 0x1

    if-eqz v12, :cond_a

    .line 446
    invoke-virtual {v8, v12, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 448
    :cond_a
    invoke-virtual {v14, v15}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move/from16 v16, v2

    move v2, v5

    goto/16 :goto_c

    .line 449
    :cond_b
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 452
    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v12

    .line 453
    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v3, :cond_c

    if-eqz v15, :cond_e

    :cond_c
    if-lez v4, :cond_e

    .line 454
    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v5, :cond_d

    if-lez v10, :cond_e

    :cond_d
    const/4 v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :goto_5
    move/from16 v16, v2

    if-eqz v5, :cond_15

    .line 458
    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    .line 459
    iget-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v3, :cond_f

    .line 460
    iput-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 462
    :cond_f
    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    .line 463
    invoke-static {v2, v9, v10, v6, v3}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v18

    sub-int v10, v10, v18

    if-nez v18, :cond_11

    const/4 v5, 0x0

    goto :goto_6

    .line 470
    :cond_10
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 472
    :cond_11
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v4, v2

    if-nez v13, :cond_12

    move v13, v2

    .line 478
    :cond_12
    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_13

    if-ltz v4, :cond_14

    goto :goto_7

    :cond_13
    add-int v2, v4, v13

    if-lez v2, :cond_14

    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    :goto_8
    and-int/2addr v5, v2

    goto :goto_9

    :cond_15
    move/from16 v17, v3

    :goto_9
    if-eqz v5, :cond_16

    if-eqz v12, :cond_16

    const/4 v2, 0x1

    .line 487
    invoke-virtual {v8, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b

    :cond_16
    if-eqz v15, :cond_19

    const/4 v2, 0x0

    .line 490
    invoke-virtual {v8, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v11, :cond_19

    .line 492
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 493
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v15

    if-ne v15, v12, :cond_18

    .line 495
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v15

    if-eqz v15, :cond_17

    add-int/lit8 v17, v17, 0x1

    :cond_17
    const/4 v15, 0x0

    .line 496
    invoke-virtual {v2, v15}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    :goto_b
    move/from16 v3, v17

    if-eqz v5, :cond_1a

    add-int/lit8 v3, v3, -0x1

    .line 503
    :cond_1a
    invoke-virtual {v14, v5}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    const/4 v2, 0x0

    goto :goto_c

    :cond_1b
    move/from16 v16, v2

    move/from16 v17, v3

    move v2, v5

    .line 506
    invoke-virtual {v14, v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_3

    :cond_1c
    const/4 v3, 0x1

    return v3
.end method

.method public getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 176
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 177
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 1

    .line 161
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object p1

    .line 162
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-object p1
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return v1

    .line 329
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 3

    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 95
    invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 96
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 100
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 105
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 109
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 110
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v0, 0x0

    .line 113
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 114
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 116
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 118
    :cond_4
    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 121
    :goto_0
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 123
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 126
    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 514
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 515
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 130
    iget-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 134
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 527
    check-cast p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    .line 528
    iget v0, p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget p1, p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 531
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 532
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 520
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 521
    iget v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    .line 261
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 264
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v0, :cond_2

    return v1

    .line 273
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 274
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 275
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 277
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 541
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 543
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    :goto_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .locals 0

    .line 151
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    return-void
.end method

.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .line 548
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 0

    .line 140
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 141
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 198
    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p1

    return p1
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 301
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 304
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 310
    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0}, Landroid/support/v7/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 209
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 211
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 212
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 215
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {v3, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 226
    :goto_1
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 227
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    move v0, v2

    :cond_5
    :goto_2
    if-eqz v0, :cond_8

    .line 236
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez p1, :cond_6

    .line 237
    new-instance p1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 239
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eq p1, v0, :cond_9

    if-eqz p1, :cond_7

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 247
    :cond_8
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-ne p1, v0, :cond_9

    .line 248
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    :cond_9
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

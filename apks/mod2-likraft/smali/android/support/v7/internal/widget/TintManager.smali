.class public Landroid/support/v7/internal/widget/TintManager;
.super Ljava/lang/Object;
.source "TintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;

.field private static final CONTAINERS_WITH_TINT_CHILDREN:[I

.field private static final DEBUG:Z = false

.field static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final TAG:Ljava/lang/String; = "TintManager"

.field private static final TINT_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final TINT_COLOR_CONTROL_ACTIVATED:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultColorStateList:Landroid/content/res/ColorStateList;

.field private final mResources:Landroid/content/res/Resources;

.field private mSwitchThumbStateList:Landroid/content/res/ColorStateList;

.field private mSwitchTrackStateList:Landroid/content/res/ColorStateList;

.field private final mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 40
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 42
    new-instance v0, Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/internal/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 48
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    const/4 v3, 0x0

    aput v2, v0, v3

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I

    const/4 v4, 0x1

    aput v2, v0, v4

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_search_api_mtrl_alpha:I

    const/4 v5, 0x2

    aput v2, v0, v5

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    const/4 v6, 0x3

    aput v2, v0, v6

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_clear_mtrl_alpha:I

    const/4 v7, 0x4

    aput v2, v0, v7

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    const/4 v8, 0x5

    aput v2, v0, v8

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v2, v0, v1

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v9, 0x7

    aput v2, v0, v9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/16 v9, 0x8

    aput v2, v0, v9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    const/16 v9, 0x9

    aput v2, v0, v9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    const/16 v9, 0xa

    aput v2, v0, v9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I

    const/16 v9, 0xb

    aput v2, v0, v9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/16 v9, 0xc

    aput v2, v0, v9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/16 v9, 0xd

    aput v2, v0, v9

    sput-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    new-array v0, v6, [I

    .line 69
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v2, v0, v3

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v2, v0, v4

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v2, v0, v5

    sput-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_ACTIVATED:[I

    new-array v0, v6, [I

    .line 79
    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v2, v0, v3

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v2, v0, v4

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v2, v0, v5

    sput-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_BACKGROUND_MULTIPLY:[I

    new-array v0, v1, [I

    .line 89
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v7

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v8

    sput-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    new-array v0, v4, [I

    .line 102
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    aput v1, v0, v3

    sput-object v0, Landroid/support/v7/internal/widget/TintManager;->CONTAINERS_WITH_TINT_CHILDREN:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroid/support/v7/internal/widget/TintManager;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Landroid/support/v7/internal/widget/TintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/support/v7/internal/widget/TintResources;-><init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/TintManager;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mResources:Landroid/content/res/Resources;

    .line 129
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4

    .line 204
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getDefaultColorStateList()Landroid/content/res/ColorStateList;
    .locals 9

    .line 221
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 227
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(I)I

    move-result v0

    .line 228
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(I)I

    move-result v1

    const/4 v2, 0x7

    new-array v3, v2, [[I

    new-array v2, v2, [I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, -0x101009e

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v3, v7

    .line 236
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/TintManager;->getDisabledThemeAttrColor(I)I

    move-result v5

    aput v5, v2, v7

    new-array v5, v4, [I

    const v6, 0x101009c

    aput v6, v5, v7

    aput-object v5, v3, v4

    aput v1, v2, v4

    const/4 v5, 0x2

    new-array v6, v4, [I

    const v8, 0x10102fe

    aput v8, v6, v7

    aput-object v6, v3, v5

    aput v1, v2, v5

    const/4 v5, 0x3

    new-array v6, v4, [I

    const v8, 0x10100a7

    aput v8, v6, v7

    aput-object v6, v3, v5

    aput v1, v2, v5

    const/4 v5, 0x4

    new-array v6, v4, [I

    const v8, 0x10100a0

    aput v8, v6, v7

    aput-object v6, v3, v5

    aput v1, v2, v5

    const/4 v5, 0x5

    new-array v4, v4, [I

    const v6, 0x10100a1

    aput v6, v4, v7

    aput-object v4, v3, v5

    aput v1, v2, v5

    const/4 v1, 0x6

    new-array v4, v7, [I

    aput-object v4, v3, v1

    aput v0, v2, v1

    .line 264
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mDefaultColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 119
    invoke-static {p1}, Landroid/support/v7/internal/widget/TintManager;->isInTintList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/support/v7/internal/widget/TintManager;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchThumbColorStateList()Landroid/content/res/ColorStateList;
    .locals 6

    .line 295
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mSwitchThumbStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, -0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    .line 302
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/TintManager;->getDisabledThemeAttrColor(I)I

    move-result v3

    aput v3, v0, v5

    new-array v3, v2, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v1, v2

    .line 306
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    new-array v3, v5, [I

    aput-object v3, v1, v2

    .line 311
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(I)I

    move-result v3

    aput v3, v0, v2

    .line 314
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/TintManager;->mSwitchThumbStateList:Landroid/content/res/ColorStateList;

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mSwitchThumbStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private getSwitchTrackColorStateList()Landroid/content/res/ColorStateList;
    .locals 7

    .line 270
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mSwitchTrackStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, -0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x1010030

    .line 277
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(IF)I

    move-result v3

    aput v3, v0, v5

    new-array v3, v2, [I

    const v6, 0x10100a0

    aput v6, v3, v5

    aput-object v3, v1, v2

    .line 281
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v3, v6}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(IF)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    new-array v3, v5, [I

    aput-object v3, v1, v2

    .line 286
    invoke-virtual {p0, v4, v6}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(IF)I

    move-result v3

    aput v3, v0, v2

    .line 289
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/TintManager;->mSwitchTrackStateList:Landroid/content/res/ColorStateList;

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mSwitchTrackStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private static isInTintList(I)Z
    .locals 1

    .line 213
    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->CONTAINERS_WITH_TINT_CHILDREN:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method getDisabledThemeAttrColor(I)I
    .locals 4

    .line 341
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 342
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 344
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(IF)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 133
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 136
    sget-object v1, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v1, p1}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance p1, Landroid/support/v7/internal/widget/TintDrawableWrapper;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/TintManager;->getDefaultColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/support/v7/internal/widget/TintDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 138
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p1, v1, :cond_1

    .line 139
    new-instance p1, Landroid/support/v7/internal/widget/TintDrawableWrapper;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/TintManager;->getSwitchTrackColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/support/v7/internal/widget/TintDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 140
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v1, :cond_2

    .line 141
    new-instance p1, Landroid/support/v7/internal/widget/TintDrawableWrapper;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/TintManager;->getSwitchThumbColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1, v2}, Landroid/support/v7/internal/widget/TintDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 143
    :cond_2
    sget-object v1, Landroid/support/v7/internal/widget/TintManager;->CONTAINERS_WITH_TINT_CHILDREN:[I

    invoke-static {v1, p1}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/TintManager;->tintDrawable(ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method getThemeAttrColor(I)I
    .locals 3

    .line 320
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 323
    iget-object p1, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    return p1

    .line 324
    :cond_0
    iget-object p1, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 325
    iget-object p1, p0, Landroid/support/v7/internal/widget/TintManager;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/support/v7/internal/widget/TintManager;->mTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method getThemeAttrColor(IF)I
    .locals 2

    .line 332
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(I)I

    move-result p1

    .line 333
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p1, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 336
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method tintDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 158
    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 159
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    :goto_0
    move p1, v1

    :goto_1
    move v0, v2

    move v2, v3

    goto :goto_2

    .line 161
    :cond_0
    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Landroid/support/v7/internal/widget/TintManager;->TINT_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_2

    const v2, 0x1010031

    .line 167
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 168
    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v0, :cond_3

    const v2, 0x1010030

    const p1, 0x42233333    # 40.8f

    .line 171
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    move v0, v2

    :goto_2
    if-eqz v2, :cond_6

    if-nez v4, :cond_4

    .line 176
    sget-object v4, Landroid/support/v7/internal/widget/TintManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 178
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/TintManager;->getThemeAttrColor(I)I

    move-result v0

    .line 181
    sget-object v2, Landroid/support/v7/internal/widget/TintManager;->COLOR_FILTER_CACHE:Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;

    invoke-virtual {v2, v0, v4}, Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    if-nez v3, :cond_5

    .line 185
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 186
    invoke-virtual {v2, v0, v4, v3}, Landroid/support/v7/internal/widget/TintManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 190
    :cond_5
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p1, v1, :cond_6

    .line 193
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return-void
.end method

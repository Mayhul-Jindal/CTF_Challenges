.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$OnSuggestionListener;,
        Landroid/support/v7/widget/SearchView$OnCloseListener;,
        Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final IS_AT_LEAST_FROYO:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private final mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/widget/ImageView;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private final mSubmitButton:Landroid/widget/ImageView;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    .line 160
    new-instance v0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 268
    sget v0, Landroid/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 272
    invoke-direct/range {p0 .. p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v2, Landroid/support/v7/widget/SearchView$1;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 177
    new-instance v2, Landroid/support/v7/widget/SearchView$2;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 183
    new-instance v2, Landroid/support/v7/widget/SearchView$3;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 904
    new-instance v2, Landroid/support/v7/widget/SearchView$7;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 928
    new-instance v3, Landroid/support/v7/widget/SearchView$8;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1103
    new-instance v3, Landroid/support/v7/widget/SearchView$9;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1287
    new-instance v4, Landroid/support/v7/widget/SearchView$10;

    invoke-direct {v4, v0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v4, v0, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1298
    new-instance v5, Landroid/support/v7/widget/SearchView$11;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v5, v0, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1591
    new-instance v6, Landroid/support/v7/widget/SearchView$12;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v6, v0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 274
    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->SearchView:[I

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v1, v8, v6, v9, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v6

    .line 277
    invoke-virtual {v6}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SearchView;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    const-string v8, "layout_inflater"

    .line 279
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 281
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_layout:I

    invoke-virtual {v6, v8, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x1

    .line 282
    invoke-virtual {v1, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 283
    sget v1, Landroid/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 284
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 286
    sget v8, Landroid/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 287
    sget v8, Landroid/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 288
    sget v10, Landroid/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 289
    sget v11, Landroid/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 290
    sget v12, Landroid/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    .line 291
    sget v13, Landroid/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 292
    sget v14, Landroid/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 293
    sget v15, Landroid/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 295
    sget v9, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    invoke-virtual {v6, v9}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    invoke-virtual {v6, v8}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v6, v8, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/support/v7/widget/SearchView;->mSearchIconResId:I

    .line 298
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v6, v8}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v6, v8}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v6, v8}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v6, v8}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    invoke-virtual {v6, v8, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    .line 306
    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    invoke-virtual {v6, v8, v7}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 308
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v2, v0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 316
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 317
    invoke-virtual {v1, v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 318
    iget-object v2, v0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 320
    new-instance v2, Landroid/support/v7/widget/SearchView$4;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 328
    sget v2, Landroid/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 330
    sget v2, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v3, -0x1

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 332
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 334
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v6, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 335
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 336
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 338
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 340
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 342
    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 344
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 348
    :cond_3
    sget v2, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 349
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 351
    invoke-virtual {v6}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 354
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 355
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.speech.extra.LANGUAGE_MODEL"

    const-string v5, "web_search"

    .line 356
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 360
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 364
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 365
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    goto :goto_0

    .line 367
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V

    .line 371
    :cond_5
    :goto_0
    iget-boolean v1, v0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 372
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 104
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object p0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/SearchView;IILjava/lang/String;)Z
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/SearchView;I)Z
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->onItemSelected(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/SearchView;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .locals 2

    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SearchView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .locals 2

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/SearchView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 6

    .line 1244
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1245
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1246
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1247
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1248
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 1249
    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    sget v4, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1253
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    .line 1256
    iget v0, v2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_1

    .line 1258
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    sub-int v0, v1, v0

    .line 1260
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1261
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    .line 1263
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1415
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1420
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1422
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 1424
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 1427
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    .line 1430
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    .line 1433
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 1434
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    :cond_4
    sget-boolean p1, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz p1, :cond_5

    .line 1437
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    .line 1538
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1540
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 1541
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    .line 1548
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1549
    sget-boolean v3, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 1550
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "suggest_intent_data_id"

    .line 1554
    invoke-static {p1, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v3, v0

    goto :goto_0

    .line 1559
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "suggest_intent_query"

    .line 1561
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    .line 1562
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 1564
    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1568
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    .line 1572
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search suggestions cursor at row "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9

    .line 1463
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1468
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1470
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1477
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1478
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    .line 1479
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1485
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "free_form"

    const/4 v4, 0x1

    .line 1493
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-lt v5, v6, :cond_4

    .line 1494
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1495
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1496
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1498
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1499
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v7

    .line 1501
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1502
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v7

    .line 1504
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_5

    .line 1505
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v4

    goto :goto_2

    :cond_4
    move-object v5, v7

    move-object v6, v5

    :cond_5
    :goto_2
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    .line 1508
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.PROMPT"

    .line 1509
    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.LANGUAGE"

    .line 1510
    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.MAX_RESULTS"

    .line 1511
    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_6

    goto :goto_3

    .line 1512
    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string p1, "calling_package"

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 1516
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 1517
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1

    .line 1447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1448
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1449
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "calling_package"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private dismissSuggestions()V
    .locals 1

    .line 1143
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 2

    .line 1579
    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1580
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1016
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-nez v0, :cond_0

    return-object p1

    .line 1020
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->mSearchIconResId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x0

    .line 1022
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1024
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1026
    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x21

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 793
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4

    .line 815
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 818
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_0

    .line 820
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 821
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 824
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 1

    .line 1584
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .line 833
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1377
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1394
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1395
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 1

    .line 1354
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1355
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1357
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1360
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onCloseClicked()V
    .locals 3

    .line 1147
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1149
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_2

    .line 1151
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1153
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1155
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1161
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 0

    .line 1268
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1270
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v7/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1271
    invoke-direct {p0, p3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1272
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    const/4 p1, 0x1

    return p1
.end method

.method private onItemSelected(I)Z
    .locals 1

    .line 1279
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1281
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private onSearchClicked()V
    .locals 1

    const/4 v0, 0x0

    .line 1167
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1168
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    const/4 v0, 0x1

    .line 1169
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1170
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1171
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 3

    .line 1129
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1130
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1131
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1133
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1134
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1137
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 972
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 975
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez p1, :cond_1

    return v0

    .line 978
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x54

    if-eq p2, p1, :cond_6

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x15

    if-eq p2, p1, :cond_4

    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    if-ne p2, p1, :cond_7

    .line 1005
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    .line 994
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result p1

    .line 996
    :goto_1
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 997
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 998
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 999
    sget-object p1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    return p3

    .line 983
    :cond_6
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    .line 984
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1116
    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1118
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    xor-int/lit8 v0, v0, 0x1

    .line 1119
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 1120
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 1121
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 1122
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1125
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    return-void
.end method

.method private onVoiceClicked()V
    .locals 2

    .line 1178
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    .line 1183
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1186
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1188
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1190
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    .line 1195
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .line 865
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 2

    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1322
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1326
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1328
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1332
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1335
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1339
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 884
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 886
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 887
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 891
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1387
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method private updateCloseButton()V
    .locals 4

    .line 856
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 859
    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 860
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_3

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method private updateFocusedState()V
    .locals 3

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 870
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v2, Landroid/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 871
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_FOCUSED_STATE_SET:[I

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 872
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    return-void
.end method

.method private updateQueryHint()V
    .locals 2

    .line 1031
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1033
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1035
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 1040
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 5

    .line 1052
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1061
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1072
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1074
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1078
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1079
    new-instance v0, Landroid/support/v7/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Landroid/support/v7/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 1081
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1082
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter;

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .line 847
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 852
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 1

    .line 838
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 842
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 5

    .line 798
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 802
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 804
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 806
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    xor-int/lit8 p1, v3, 0x1

    .line 809
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 810
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 2

    .line 1096
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1098
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v1, p1

    .line 1100
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    const/4 v0, 0x0

    .line 500
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 501
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 502
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 503
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 474
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 754
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 561
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .line 601
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    .line 603
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 401
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 397
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 1

    .line 736
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .line 716
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1221
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1222
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 1223
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1224
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1225
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .line 1233
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1235
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1236
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    .line 1237
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1238
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1239
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 877
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 879
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 760
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    .line 765
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 766
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 779
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_6

    .line 780
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 785
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 771
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_5

    .line 772
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 774
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 789
    :cond_6
    :goto_0
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0

    .line 901
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .line 1200
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1203
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1211
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1213
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 481
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 485
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 488
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_2
    return p1

    .line 492
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 437
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 651
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 653
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 625
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 626
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    .line 627
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 628
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 743
    iput p1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    .line 745
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V
    .locals 0

    .line 522
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 531
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V
    .locals 0

    .line 513
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 552
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V
    .locals 0

    .line 540
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 576
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 581
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 592
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 593
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .line 704
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v1, v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz v1, :cond_1

    .line 706
    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 1

    .line 413
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_1

    .line 415
    sget-boolean p1, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz p1, :cond_0

    .line 416
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSearchAutoComplete()V

    .line 418
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 421
    :cond_1
    sget-boolean p1, Landroid/support/v7/widget/SearchView;->IS_AT_LEAST_FROYO:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->hasVoiceSearch()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz p1, :cond_3

    .line 426
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 428
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 677
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 1

    .line 726
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

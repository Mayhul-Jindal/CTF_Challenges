.class public Lorg/qtproject/qt/android/QtMessageDialogHelper;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_buttonsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/qtproject/qt/android/ButtonStruct;",
            ">;"
        }
    .end annotation
.end field

.field private m_detailedText:Landroid/text/Spanned;

.field private m_dialog:Landroid/app/AlertDialog;

.field private m_handler:J

.field private m_icon:I

.field private m_informativeText:Landroid/text/Spanned;

.field private m_text:Landroid/text/Spanned;

.field private m_theme:Landroid/content/res/Resources$Theme;

.field private m_title:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 382
    iput v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_icon:I

    const-wide/16 v0, 0x0

    .line 386
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    .line 94
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lorg/qtproject/qt/android/QtMessageDialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$202(Lorg/qtproject/qt/android/QtMessageDialogHelper;Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    return-object p1
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    return-object p0
.end method

.method static synthetic access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 89
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    return-object p0
.end method

.method static synthetic access$700(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    return-object p0
.end method

.method static synthetic access$800(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    return-object p0
.end method

.method static synthetic access$900(Lorg/qtproject/qt/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getStyledDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 106
    iget v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_icon:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 110
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 111
    iget-object v3, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    const v4, 0x1010355

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 112
    iget-object v3, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    iget v2, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_icon:I

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 136
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 122
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x108009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private getStyledDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const-string v1, "android.R$attr"

    .line 181
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 182
    iget-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 183
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public addButton(ILjava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    new-instance v1, Lorg/qtproject/qt/android/ButtonStruct;

    invoke-direct {v1, p0, p1, p2}, Lorg/qtproject/qt/android/ButtonStruct;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handler()J
    .locals 2

    .line 366
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    return-wide v0
.end method

.method public hide()V
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper$2;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 371
    iput v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_icon:I

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    .line 373
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    .line 374
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    .line 375
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    .line 376
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 377
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    const-wide/16 v0, 0x0

    .line 378
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    return-void
.end method

.method public setDetailedText(Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 100
    iput p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_icon:I

    return-void
.end method

.method public setInformativeText(Ljava/lang/String;)V
    .locals 0

    .line 164
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    return-void
.end method

.method public setTile(Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    return-void
.end method

.method public show(J)V
    .locals 0

    .line 191
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    .line 192
    iget-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance p2, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;

    invoke-direct {p2, p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class public Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;,
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
    }
.end annotation


# static fields
.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static final IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

.field public static final ROOT:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 116
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-direct {v0, v1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    .line 146
    :goto_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    const-string v0, "Arab"

    .line 148
    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    const-string v0, "Hebr"

    .line 149
    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1

    .line 143
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

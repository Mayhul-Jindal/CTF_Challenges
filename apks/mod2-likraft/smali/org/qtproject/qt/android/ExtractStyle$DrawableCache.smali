.class Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/ExtractStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCache"
.end annotation


# instance fields
.field drawable:Ljava/lang/Object;

.field object:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 0

    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1826
    iput-object p1, p0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->object:Lorg/json/JSONObject;

    .line 1827
    iput-object p2, p0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->drawable:Ljava/lang/Object;

    return-void
.end method

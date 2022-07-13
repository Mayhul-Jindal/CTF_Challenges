.class Lorg/qtproject/qt/android/QtNative$6;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$qtParams:Ljava/lang/String;

.field final synthetic val$res:[Z


# direct methods
.method constructor <init>([ZLjava/lang/String;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lorg/qtproject/qt/android/QtNative$6;->val$res:[Z

    iput-object p2, p0, Lorg/qtproject/qt/android/QtNative$6;->val$qtParams:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 638
    iget-object v1, v0, Lorg/qtproject/qt/android/QtNative$6;->val$res:[Z

    iget-object v2, v0, Lorg/qtproject/qt/android/QtNative$6;->val$qtParams:Ljava/lang/String;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtNative;->startQtAndroidPlugin(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    .line 640
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$000()I

    move-result v4

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$100()I

    move-result v5

    .line 641
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$200()I

    move-result v6

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$300()I

    move-result v7

    .line 642
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$400()I

    move-result v8

    .line 643
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$500()I

    move-result v9

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$600()D

    move-result-wide v10

    .line 644
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$700()D

    move-result-wide v12

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$800()D

    move-result-wide v14

    .line 645
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$900()D

    move-result-wide v16

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1000()F

    move-result v18

    .line 639
    invoke-static/range {v4 .. v18}, Lorg/qtproject/qt/android/QtNative;->setDisplayMetrics(IIIIIIDDDDF)V

    return-void
.end method

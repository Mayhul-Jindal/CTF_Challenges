.class public Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
.super Ljava/lang/Object;
.source "QtApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/bindings/QtApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvokeResult"
.end annotation


# instance fields
.field public invoked:Z

.field public methodReturns:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    return-void
.end method

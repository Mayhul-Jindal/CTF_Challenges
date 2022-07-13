.class Lorg/qtproject/qt/android/QtNative$19$1;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtNative$19;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtNative$19;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lorg/qtproject/qt/android/QtNative$19$1;->this$0:Lorg/qtproject/qt/android/QtNative$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 0

    .line 1031
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->onClipboardDataChanged()V

    return-void
.end method

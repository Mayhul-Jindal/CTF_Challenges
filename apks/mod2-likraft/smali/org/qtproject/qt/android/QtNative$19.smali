.class Lorg/qtproject/qt/android/QtNative$19;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->registerClipboardManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lorg/qtproject/qt/android/QtNative$19;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1026
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1100()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1100()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->access$1402(Landroid/content/ClipboardManager;)Landroid/content/ClipboardManager;

    .line 1028
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1400()Landroid/content/ClipboardManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1029
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1400()Landroid/content/ClipboardManager;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtNative$19$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtNative$19$1;-><init>(Lorg/qtproject/qt/android/QtNative$19;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 1035
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtNative$19;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

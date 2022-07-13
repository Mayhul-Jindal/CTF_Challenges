.class Lorg/qtproject/qt/android/QtThread$2;
.super Ljava/lang/Object;
.source "QtThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtThread;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtThread;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/qtproject/qt/android/QtThread$2;->this$0:Lorg/qtproject/qt/android/QtThread;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtThread$2;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtThread$2;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread$2;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

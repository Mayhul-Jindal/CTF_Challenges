.class Lorg/qtproject/qt/android/QtThread$1;
.super Ljava/lang/Object;
.source "QtThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtThread;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtThread;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtThread;->access$000(Lorg/qtproject/qt/android/QtThread;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtThread;->access$100(Lorg/qtproject/qt/android/QtThread;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtThread;->access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtThread;->access$100(Lorg/qtproject/qt/android/QtThread;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 57
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtThread;->access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    iget-object v2, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtThread;->access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 59
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 61
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 59
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

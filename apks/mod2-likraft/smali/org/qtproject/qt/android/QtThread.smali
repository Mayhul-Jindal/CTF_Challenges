.class public Lorg/qtproject/qt/android/QtThread;
.super Ljava/lang/Object;
.source "QtThread.java"


# instance fields
.field private m_exit:Z

.field private m_pendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private m_qtThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/qtproject/qt/android/QtThread$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtThread$1;-><init>(Lorg/qtproject/qt/android/QtThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    const-string v1, "qtMainLoopThread"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtThread;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    return p0
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtThread;)Ljava/lang/Thread;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public exit()V
    .locals 2

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    .line 103
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 105
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 4

    .line 82
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 83
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v2, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    new-instance v3, Lorg/qtproject/qt/android/QtThread$2;

    invoke-direct {v3, p0, p1, v0}, Lorg/qtproject/qt/android/QtThread$2;-><init>(Lorg/qtproject/qt/android/QtThread;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$root:Ljava/lang/String;

.field final synthetic val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0

    .line 689
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 694
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v2, "onConnect"

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MediaBrowserCompat"

    if-eq v0, v1, :cond_1

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect from service while mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I

    move-result v1

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$700(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "... ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$802(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$902(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 705
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1002(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 706
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I

    .line 712
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 716
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 718
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method
